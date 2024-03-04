/*
 * supabase functions deploy detail --no-verify-jwt
 */
import postgres from 'https://deno.land/x/postgresjs/mod.js'

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'Apikey, Content-Type',
  'Access-Control-Allow-Methods': 'POST',
}

Deno.serve(async (req) => {
  const { method } = req;

  // This is needed if you're planning to invoke your function from a browser.
  if (method === 'OPTIONS') {
    return new Response('ok', { headers: corsHeaders })
  }

  try {
    const body = await req.json();
    const sql = postgres(`postgres://${Deno.env.get('DB_USER')}:${Deno.env.get('DB_PASSWORD')}@${Deno.env.get('DB_HOSTNAME')}:5432/postgres`)

    const tournees = await sql`
    select t.tournee_id, tournee
    , preparation_id
    , calendrier_id
    , ordre
    , couleur
    from tournees t order by t.ordre`

    for (const tournee of tournees) {
const distributions = await sql`
    select p.depot_id, p.depot
    , d.ordre
    ,p.capacite
    ,a.adresse,a.codepostal,a.ville,st_x(a.localisation),st_y(a.localisation)
    from distributions d
    inner join depots p on d.depot_id = p.depot_id
    left join adresses a on a.adresse_id = p.depot_id
    where tournee_id = ${tournee.tournee_id}
    order by d.ordre`
      tournee.distribution = distributions
    }


    return new Response(JSON.stringify(tournees), {
      headers: { ...corsHeaders, 'Content-Type': 'application/json' },
      status: 200,
    })
  }
  catch (error) {
    return new Response(JSON.stringify({ error: error.message }), {
      headers: { ...corsHeaders, 'Content-Type': 'application/json' },
      status: 400,
    })
  }
})

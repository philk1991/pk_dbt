with branches as (
    select
        {{ dbt_utils.generate_surrogate_key(['name','repository']) }} as branch_id,
        "name" as branch_name,
        protected,
        "commit",
        protection,
        repository,
        protection_url,
        "_airbyte_ab_id",
        "_airbyte_emitted_at",
        "_airbyte_normalized_at",
        "_airbyte_branches_hashid"
    from
        {{ source('github','branches') }}
)

Select * from branches

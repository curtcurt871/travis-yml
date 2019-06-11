describe Travis::Yml::Schema::Def::Deploy::Scalingo do
  subject { Travis::Yml.schema[:definitions][:deploy][:scalingo] }

  # it { puts JSON.pretty_generate(subject) }

  it do
    should eq(
      '$id': :scalingo,
        title: 'Scalingo',
        anyOf: [
          {
            type: :object,
            properties: {
              provider: {
                type: :string,
                enum: [
                  'scalingo'
                ],
                strict: true
              },
              on: {
                '$ref': '#/definitions/deploy/conditions',
                aliases: [
                  :true
                ]
              },
              run: {
                '$ref': '#/definitions/type/strs',
              },
              allow_failure: {
                type: :boolean
              },
              skip_cleanup: {
                type: :boolean
              },
              edge: {
                '$ref': '#/definitions/deploy/edge'
              },
              username: {
                '$ref': '#/definitions/type/secure',
                strict: false,
                aliases: [
                  :user
                ]
              },
              password: {
                '$ref': '#/definitions/type/secure'
              },
              api_key: {
                '$ref': '#/definitions/type/secure',
                aliases: [
                  :api_token
                ]
              },
              remote: {
                type: :string
              },
              branch: {
                type: :string
              },
              app: {
                type: :string
              }
            },
            additionalProperties: false,
            normal: true,
            prefix: {
              key: :provider,
              only: [
                :str
              ]
            },
            required: [
              :provider
            ]
          },
          {
            type: :string,
            enum: [
              'scalingo'
            ],
            strict: true
          }
        ],
        normal: true
    )
  end
end

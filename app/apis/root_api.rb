class RootAPI < Grape::API

  mount V1API

  add_swagger_documentation base_path: '/api/v1',
                            hide_documentation_path: true,
                            hide_format: true,
                            markdown: GrapeSwagger::Markdown::RedcarpetAdapter.new(render_options: { highlighter: :rouge })

end

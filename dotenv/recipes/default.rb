node[:deploy].each do |application, deploy|
  dotenv_template do
    application application
    deploy deploy
    env node[:deploy][application.to_sym][:env]
  end

  link "#{deploy[:deploy_to]}/current/.env" do
    to "#{deploy[:deploy_to]}/shared/config/dotenv"
  end
end

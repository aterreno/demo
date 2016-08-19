ENV['VAGRANT_DEFAULT_PROVIDER'] = 'docker'

Vagrant.configure("2") do |config|

  config.vm.synced_folder ".", "/app"

  config.vm.define "demo-env" do |a|
    a.vm.provider "docker" do |d|
      d.build_dir = "."
      d.build_args = ["-t=demo-env"]
      d.ports = ["8080:8080"]
      d.force_host_vm = false
      d.name = "demo-env"
      d.remains_running = true
      d.cmd = ["./gradlew", "bootRun"]
    end
  end
end

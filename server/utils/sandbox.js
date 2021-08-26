const {VM, VMScript} = require('vm2')

module.exports = async function sandboxFn(context, script) {

    let vm = new VM({
        timeout: 3000,
        sandbox: context
    })

    script = new VMScript(script);
    const result = vm.run(script)
    context.mockJson = result
    vm = null
    return context
}

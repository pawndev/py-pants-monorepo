pex_binary(
    name="main",
    entry_point="main.py",
)

python_requirements(
    name="reqs",
)

python_sources()

python_tests(
    name="tests",
)

python_awslambda(
    name="lambda",
    runtime="python3.8",
    # Pants will convert this to `project.lambda_example:example_handler`.
    handler="main.py:print_message",
)
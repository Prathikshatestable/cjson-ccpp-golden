# Testable C/C++ whitebox fixtures (tools 1–15)

Golden inputs for [cJSON](https://github.com/Benny-Testable/cJSON) so embedded lane tools 3, 8, 14, and 15 do not skip for repo preconditions.

| # | Tool | Was | Fixture |
|---|------|-----|---------|
| 3 | clang-format | `no_clang_format_config` | Root `.clang-format` (LLVM) |
| 8 | diff-cover | `no_baseline` | `.wb_baseline_sha` + `.wb_baseline_meta.json` → parent commit |
| 14 | stack-usage | `no_target_cpu_in_repo` | `cmake/testable_arm_profile.cmake` (`-mcpu=cortex-m4`) |
| 15 | size | `no_target_cpu_in_repo` | same ARM profile file |

Reference metric map: run `34c80e55` — `C_CPP_Metric_Root_Cause_34c80e55_27-11-2026_updated.xlsx`.

`infra/terraform/` is a minimal IaC sample only (Checkov is not on the default `c_cpp` plan; present for cross-lane/manual runs).
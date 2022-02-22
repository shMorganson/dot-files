local scratch_status_ok, scratch = pcall(require, "scratch.nvim")
if not scratch_status_ok then
  print("scratch.nvim is either broken or not installed.")
  return
end


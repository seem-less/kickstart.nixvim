{ pkgs, ... }:
{
  plugins.llm = {
    enable = true;
    settings = {
      model = "gemma4:31b";
      url = "http://localhost:11434";
      request_body = {
        options = {
          temperature = 1.0;
          top_p = 0.95;
          top_k = 64;
        };
      };
    };
  };
}

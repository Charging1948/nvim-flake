{ fetchurl, fetchgit, linkFarm, runCommand, gnutar }: rec {
  offline_cache = linkFarm "offline" packages;
  packages = [
    {
      name = "_vscode_l10n___l10n_0.0.18.tgz";
      path = fetchurl {
        name = "_vscode_l10n___l10n_0.0.18.tgz";
        url  = "https://registry.yarnpkg.com/@vscode/l10n/-/l10n-0.0.18.tgz";
        sha512 = "KYSIHVmslkaCDyw013pphY+d7x1qV8IZupYfeIfzNA+nsaWHbn5uPuQRvdRFsa9zFzGeudPuoGoZ1Op4jrJXIQ==";
      };
    }
    {
      name = "_vtsls_language_server___language_server_0.2.6.tgz";
      path = fetchurl {
        name = "_vtsls_language_server___language_server_0.2.6.tgz";
        url  = "https://registry.yarnpkg.com/@vtsls/language-server/-/language-server-0.2.6.tgz";
        sha512 = "o5VHtC7LKLNAA2v1yLPRcn4wwYiFLRU2shgIsC5jYe2tjIfj3bA0vkBsquEDlXBIfmesNFzuzwBahiii6y0Cvg==";
      };
    }
    {
      name = "_vtsls_language_service___language_service_0.2.6.tgz";
      path = fetchurl {
        name = "_vtsls_language_service___language_service_0.2.6.tgz";
        url  = "https://registry.yarnpkg.com/@vtsls/language-service/-/language-service-0.2.6.tgz";
        sha512 = "EoeZyLiWl1Sh65qQ27ewShRKD62xl5A+xEPMx1mpNH23N8yYAhsa7qMuuD2rkEPV07Wn+D4MAPtNLKBtUrwERA==";
      };
    }
    {
      name = "_vtsls_vscode_fuzzy___vscode_fuzzy_0.0.1.tgz";
      path = fetchurl {
        name = "_vtsls_vscode_fuzzy___vscode_fuzzy_0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/@vtsls/vscode-fuzzy/-/vscode-fuzzy-0.0.1.tgz";
        sha512 = "2KCtA+/OmPVttsdVggO0WQFXZwM0zbG7G8KRGExe4YeoaHB0fDWyfsNrWnutnFVRlpmu8quVTjTI15YK6KGCFw==";
      };
    }
    {
      name = "jsonc_parser___jsonc_parser_3.3.1.tgz";
      path = fetchurl {
        name = "jsonc_parser___jsonc_parser_3.3.1.tgz";
        url  = "https://registry.yarnpkg.com/jsonc-parser/-/jsonc-parser-3.3.1.tgz";
        sha512 = "HUgH65KyejrUFPvHFPbqOY0rsFip3Bo5wb4ngvdi1EpCYWUQDC5V+Y7mZws+DLkr4M//zQJoanu1SP+87Dv1oQ==";
      };
    }
    {
      name = "lru_cache___lru_cache_6.0.0.tgz";
      path = fetchurl {
        name = "lru_cache___lru_cache_6.0.0.tgz";
        url  = "https://registry.yarnpkg.com/lru-cache/-/lru-cache-6.0.0.tgz";
        sha512 = "Jo6dJ04CmSjuznwJSS3pUeWmd/H0ffTlkXXgwZi+eq1UCmqQwCh+eLsYOYCwY991i2Fah4h1BEMCx4qThGbsiA==";
      };
    }
    {
      name = "semver___semver_7.5.2.tgz";
      path = fetchurl {
        name = "semver___semver_7.5.2.tgz";
        url  = "https://registry.yarnpkg.com/semver/-/semver-7.5.2.tgz";
        sha512 = "SoftuTROv/cRjCze/scjGyiDtcUyxw1rgYQSZY7XTmtR5hX+dm76iDbTH8TkLPHCQmlbQVSSbNZCPM2hb0knnQ==";
      };
    }
    {
      name = "typescript___typescript_5.6.2.tgz";
      path = fetchurl {
        name = "typescript___typescript_5.6.2.tgz";
        url  = "https://registry.yarnpkg.com/typescript/-/typescript-5.6.2.tgz";
        sha512 = "NW8ByodCSNCwZeghjN3o+JX5OFH0Ojg6sadjEKY4huZ52TqbJTJnDo5+Tw98lSy63NZvi4n+ez5m2u5d4PkZyw==";
      };
    }
    {
      name = "vscode_jsonrpc___vscode_jsonrpc_8.2.0.tgz";
      path = fetchurl {
        name = "vscode_jsonrpc___vscode_jsonrpc_8.2.0.tgz";
        url  = "https://registry.yarnpkg.com/vscode-jsonrpc/-/vscode-jsonrpc-8.2.0.tgz";
        sha512 = "C+r0eKJUIfiDIfwJhria30+TYWPtuHJXHtI7J0YlOmKAo7ogxP20T0zxB7HZQIFhIyvoBPwWskjxrvAtfjyZfA==";
      };
    }
    {
      name = "vscode_languageserver_protocol___vscode_languageserver_protocol_3.17.5.tgz";
      path = fetchurl {
        name = "vscode_languageserver_protocol___vscode_languageserver_protocol_3.17.5.tgz";
        url  = "https://registry.yarnpkg.com/vscode-languageserver-protocol/-/vscode-languageserver-protocol-3.17.5.tgz";
        sha512 = "mb1bvRJN8SVznADSGWM9u/b07H7Ecg0I3OgXDuLdn307rl/J3A9YD6/eYOssqhecL27hK1IPZAsaqh00i/Jljg==";
      };
    }
    {
      name = "vscode_languageserver_textdocument___vscode_languageserver_textdocument_1.0.12.tgz";
      path = fetchurl {
        name = "vscode_languageserver_textdocument___vscode_languageserver_textdocument_1.0.12.tgz";
        url  = "https://registry.yarnpkg.com/vscode-languageserver-textdocument/-/vscode-languageserver-textdocument-1.0.12.tgz";
        sha512 = "cxWNPesCnQCcMPeenjKKsOCKQZ/L6Tv19DTRIGuLWe32lyzWhihGVJ/rcckZXJxfdKCFvRLS3fpBIsV/ZGX4zA==";
      };
    }
    {
      name = "vscode_languageserver_types___vscode_languageserver_types_3.17.5.tgz";
      path = fetchurl {
        name = "vscode_languageserver_types___vscode_languageserver_types_3.17.5.tgz";
        url  = "https://registry.yarnpkg.com/vscode-languageserver-types/-/vscode-languageserver-types-3.17.5.tgz";
        sha512 = "Ld1VelNuX9pdF39h2Hgaeb5hEZM2Z3jUrrMgWQAu82jMtZp7p3vJT3BzToKtZI7NgQssZje5o0zryOrhQvzQAg==";
      };
    }
    {
      name = "vscode_languageserver___vscode_languageserver_9.0.1.tgz";
      path = fetchurl {
        name = "vscode_languageserver___vscode_languageserver_9.0.1.tgz";
        url  = "https://registry.yarnpkg.com/vscode-languageserver/-/vscode-languageserver-9.0.1.tgz";
        sha512 = "woByF3PDpkHFUreUa7Hos7+pUWdeWMXRd26+ZX2A8cFx6v/JPTtd4/uN0/jB6XQHYaOlHbio03NTHCqrgG5n7g==";
      };
    }
    {
      name = "vscode_uri___vscode_uri_3.0.8.tgz";
      path = fetchurl {
        name = "vscode_uri___vscode_uri_3.0.8.tgz";
        url  = "https://registry.yarnpkg.com/vscode-uri/-/vscode-uri-3.0.8.tgz";
        sha512 = "AyFQ0EVmsOZOlAnxoFOGOq1SQDWAB7C6aqMGS23svWAllfOaxbuFvcT8D1i8z3Gyn8fraVeZNNmN6e9bxxXkKw==";
      };
    }
    {
      name = "yallist___yallist_4.0.0.tgz";
      path = fetchurl {
        name = "yallist___yallist_4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/yallist/-/yallist-4.0.0.tgz";
        sha512 = "3wdGidZyq5PB084XLES5TpOSRA3wjXAlIWMhum2kRcv/41Sn2emQ0dycQW4uZXLejwKvg6EsvbdlVL+FYEct7A==";
      };
    }
  ];
}

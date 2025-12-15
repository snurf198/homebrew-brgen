cask "brgen" do
  version "1.0.0"
  # 아래 sha256은 zip 파일의 해시값이어야 합니다 (확인 방법은 하단 참조)
  sha256 "b2435d69f4c501b2a8fbf7102be4fa004677acdfee5c0f975d37a19a2d38cd00"

  # GitHub Release에서 복사한 zip 파일 다운로드 주소
  url "https://github.com/snurf198/branch-name-generator/releases/download/v1.0.0/BranchNameGenerator.zip"
  
  name "brgen"
  desc "git branch name generator with ai"
  homepage "https://github.com/snurf198/branch-name-generator"

  # 실제 설치될 앱 이름 (압축 해제 후 나오는 .app 파일명)
  app "brgen.app"

  # (선택 사항) 앱 실행 시 충돌을 방지하기 위한 설정
  zap trash: [
    "~/Library/Preferences/com.example.brgen.plist",
    "~/Library/Application Support/BrGen",
  ]
end

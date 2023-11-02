#import "templates.typ"
#import "const.typ"
// 環境構築
#show: templates.setup.with(
  title: const.title,
  author: const.me
)
// 要旨::Abstract
#include "chapters/abstract.typ"
// 目次::Contents
#outline()
// 緒言::Introduction
#include "chapters/introduction.typ"
// 先行研究::Previous Research
#include "chapters/previous_research.typ"
// 準備::Methodology
#include "chapters/methodology.typ"
// 本論::Results
#include "chapters/results.typ"
// 議論::Discussion
#include "chapters/discussion.typ"
// 結論::Conclusion
#include "chapters/conclusion.typ"
// 参考文献::Bibliography
#include "chapters/bibliography.typ"
// 謝辞::Acknowledgements
#include "chapters/acknowledgements.typ"
// 附録::Appendix
#include "chapters/appendix.typ"
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
#outline(indent: auto)
#set page(columns: 2)
// 緒言::Introduction
#include "chapters/introduction.typ"
// 準備::Methodology
#include "chapters/methodology.typ"
// 本論::Results
#include "chapters/results.typ"
// 議論::Discussion
#include "chapters/discussion.typ"
// 結論::Conclusion
#include "chapters/conclusion.typ"
// 参考文献::Bibliography
#bibliography("bib.yml")
// 謝辞::Acknowledgements
#set heading(numbering: none)
#include "chapters/acknowledgements.typ"
// 附録::Appendix
#include "appendices.typ"
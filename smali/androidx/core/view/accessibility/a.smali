###### Class androidx.core.view.accessibility.a (androidx.core.view.accessibility.a)
.class public final Landroidx/core/view/accessibility/a;
.super Landroid/text/style/ClickableSpan;
.source "AccessibilityClickableSpanCompat.java"


# instance fields
.field private final o:I

.field private final p:Landroidx/core/view/accessibility/c;

.field private final q:I


# direct methods
.method public constructor <init>(ILandroidx/core/view/accessibility/c;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    iput p1, p0, Landroidx/core/view/accessibility/a;->o:I

    .line 3
    iput-object p2, p0, Landroidx/core/view/accessibility/a;->p:Landroidx/core/view/accessibility/c;

    .line 4
    iput p3, p0, Landroidx/core/view/accessibility/a;->q:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget v0, p0, Landroidx/core/view/accessibility/a;->o:I

    const-string v1, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Landroidx/core/view/accessibility/a;->p:Landroidx/core/view/accessibility/c;

    iget v1, p0, Landroidx/core/view/accessibility/a;->q:I

    invoke-virtual {v0, v1, p1}, Landroidx/core/view/accessibility/c;->O(ILandroid/os/Bundle;)Z

    return-void
.end method

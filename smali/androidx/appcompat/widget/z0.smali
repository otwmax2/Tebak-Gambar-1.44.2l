###### Class androidx.appcompat.widget.z0 (androidx.appcompat.widget.z0)
.class public Landroidx/appcompat/widget/z0;
.super Ljava/lang/Object;
.source "TooltipCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/z0$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_a

    .line 2
    invoke-static {p0, p1}, Landroidx/appcompat/widget/z0$a;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 3
    :cond_a
    invoke-static {p0, p1}, Landroidx/appcompat/widget/c1;->h(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_d
    return-void
.end method

###### Class androidx.appcompat.widget.z0.a (androidx.appcompat.widget.z0$a)
.class Landroidx/appcompat/widget/z0$a;
.super Ljava/lang/Object;
.source "TooltipCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method

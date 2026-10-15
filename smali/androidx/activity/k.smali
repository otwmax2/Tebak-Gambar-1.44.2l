###### Class androidx.activity.k (androidx.activity.k)
.class public final Landroidx/activity/k;
.super Ljava/lang/Object;
.source "ViewTreeOnBackPressedDispatcherOwner.kt"


# direct methods
.method public static final a(Landroid/view/View;Landroidx/activity/i;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackPressedDispatcherOwner"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroidx/activity/j;->a:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

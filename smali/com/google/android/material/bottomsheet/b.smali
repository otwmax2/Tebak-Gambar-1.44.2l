###### Class com.google.android.material.bottomsheet.b (com.google.android.material.bottomsheet.b)
.class public Lcom/google/android/material/bottomsheet/b;
.super Landroidx/appcompat/app/k;
.source "BottomSheetDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomsheet/b$b;
    }
.end annotation


# instance fields
.field private o:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/k;-><init>()V

    return-void
.end method

.method static synthetic o(Lcom/google/android/material/bottomsheet/b;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;->p()V

    return-void
.end method

.method private p()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/b;->o:Z

    if-eqz v0, :cond_8

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/d;->dismissAllowingStateLoss()V

    goto :goto_b

    .line 3
    :cond_8
    invoke-super {p0}, Landroidx/fragment/app/d;->dismiss()V

    :goto_b
    return-void
.end method

.method private q(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/b;->o:Z

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Y()I

    move-result p2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_d

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;->p()V

    goto :goto_2a

    .line 4
    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/material/bottomsheet/a;

    if-eqz p2, :cond_1e

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/a;->l()V

    .line 6
    :cond_1e
    new-instance p2, Lcom/google/android/material/bottomsheet/b$b;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/google/android/material/bottomsheet/b$b;-><init>(Lcom/google/android/material/bottomsheet/b;Lcom/google/android/material/bottomsheet/b$a;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q0(I)V

    :goto_2a
    return-void
.end method

.method private r(Z)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/material/bottomsheet/a;

    if-eqz v1, :cond_1f

    .line 3
    check-cast v0, Lcom/google/android/material/bottomsheet/a;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->j()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b0()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 6
    invoke-direct {p0, v1, p1}, Lcom/google/android/material/bottomsheet/b;->q(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    const/4 p1, 0x1

    return p1

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/b;->r(Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/d;->dismiss()V

    :cond_a
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/b;->r(Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/d;->dismissAllowingStateLoss()V

    :cond_a
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    .line 1
    new-instance p1, Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/bottomsheet/a;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

###### Class com.google.android.material.bottomsheet.b.a (com.google.android.material.bottomsheet.b$a)
.class synthetic Lcom/google/android/material/bottomsheet/b$a;
.super Ljava/lang/Object;
.source "BottomSheetDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.material.bottomsheet.b.C0113b (com.google.android.material.bottomsheet.b$b)
.class Lcom/google/android/material/bottomsheet/b$b;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;
.source "BottomSheetDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomsheet/b;


# direct methods
.method private constructor <init>(Lcom/google/android/material/bottomsheet/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/b$b;->a:Lcom/google/android/material/bottomsheet/b;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/bottomsheet/b;Lcom/google/android/material/bottomsheet/b$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/b$b;-><init>(Lcom/google/android/material/bottomsheet/b;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .registers 3

    const/4 p1, 0x5

    if-ne p2, p1, :cond_8

    .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/b$b;->a:Lcom/google/android/material/bottomsheet/b;

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/b;->o(Lcom/google/android/material/bottomsheet/b;)V

    :cond_8
    return-void
.end method

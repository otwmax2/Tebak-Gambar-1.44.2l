###### Class k8.c (k8.c)
.class public Lk8/c;
.super Lcom/google/android/material/bottomsheet/b;
.source "TGFreeAnswerDialogFragment.java"


# instance fields
.field p:Landroid/os/Handler;

.field q:Lo8/o0;

.field r:Lk8/d;

.field s:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk8/c;->s:I

    return-void
.end method

.method public static synthetic s(Lk8/c;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lk8/c;->u(Z)V

    return-void
.end method

.method public static synthetic t(Lk8/c;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lk8/c;->x(Z)V

    return-void
.end method

.method private u(Z)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->dismiss()V

    return-void
.end method

.method private v()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/firebase/remoteconfig/a;->i()Lcom/google/firebase/remoteconfig/a;

    move-result-object v0

    const-string v1, "v1_freeAnswer_totalCountPromotionRandom"

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_3c

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    .line 3
    new-instance v2, Lcom/google/gson/f;

    invoke-direct {v2}, Lcom/google/gson/f;-><init>()V

    .line 4
    const-class v3, Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/f;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_28

    return-object v1

    .line 6
    :cond_28
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_3c
    return-object v1
.end method

.method public static w(Lh8/a;Landroid/os/Handler;)Lk8/c;
    .registers 4

    .line 1
    new-instance v0, Lk8/c;

    invoke-direct {v0}, Lk8/c;-><init>()V

    .line 2
    iput-object p1, v0, Lk8/c;->p:Landroid/os/Handler;

    .line 3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "notification"

    .line 4
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private x(Z)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    if-nez p1, :cond_a

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->dismiss()V

    return-void

    :cond_a
    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lk8/c;->s:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->dismiss()V

    return-void
.end method

.method private y(Landroid/app/Dialog;)V
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/google/android/material/bottomsheet/a;

    if-eqz v0, :cond_1a

    .line 2
    check-cast p1, Lcom/google/android/material/bottomsheet/a;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/a;->j()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q0(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/a;->j()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    new-instance v0, Lk8/c$a;

    invoke-direct {v0, p0}, Lk8/c$a;-><init>(Lk8/c;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;)V

    :cond_1a
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lk8/c;->r:Lk8/d;

    iget-boolean p1, p1, Lk8/d;->K:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->setCancelable(Z)V

    .line 3
    iget-object p1, p0, Lk8/c;->r:Lk8/d;

    invoke-virtual {p1}, Lk8/d;->H()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/h0;

    move-result-object p1

    const-class v0, Lk8/d;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/h0;->a(Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    check-cast p1, Lk8/d;

    iput-object p1, p0, Lk8/c;->r:Lk8/d;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lh8/a;

    if-eqz p1, :cond_2a

    .line 5
    iget-object p1, p0, Lk8/c;->r:Lk8/d;

    invoke-virtual {p1}, Lk8/d;->G()V

    .line 6
    :cond_2a
    iget-object p1, p0, Lk8/c;->r:Lk8/d;

    iget-object p1, p1, Lk8/d;->I:Ly8/u;

    new-instance v0, Lk8/a;

    invoke-direct {v0, p0}, Lk8/a;-><init>(Lk8/c;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 7
    iget-object p1, p0, Lk8/c;->r:Lk8/d;

    iget-object p1, p1, Lk8/d;->J:Ly8/u;

    new-instance v0, Lk8/b;

    invoke-direct {v0, p0}, Lk8/b;-><init>(Lk8/c;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/b;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lk8/c;->y(Landroid/app/Dialog;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d005b

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/g;->h(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/o0;

    iput-object p1, p0, Lk8/c;->q:Lo8/o0;

    .line 2
    iget-object p2, p0, Lk8/c;->r:Lk8/d;

    invoke-virtual {p1, p2}, Lo8/o0;->w0(Lk8/d;)V

    .line 3
    iget-object p1, p0, Lk8/c;->q:Lo8/o0;

    invoke-virtual {p1}, Lo8/o0;->u0()Lk8/d;

    move-result-object p1

    iget-object p1, p1, Lk8/d;->D:Landroidx/databinding/m;

    invoke-direct {p0}, Lk8/c;->v()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lk8/c;->q:Lo8/o0;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->S()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lk8/c;->p:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget v1, p0, Lk8/c;->s:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

###### Class k8.c.a (k8.c$a)
.class Lk8/c$a;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;
.source "TGFreeAnswerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk8/c;->y(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lk8/c;


# direct methods
.method constructor <init>(Lk8/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lk8/c$a;->a:Lk8/c;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .registers 3

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p2, p1

    if-nez p1, :cond_d

    .line 1
    iget-object p1, p0, Lk8/c$a;->a:Lk8/c;

    iget-object p1, p1, Lk8/c;->r:Lk8/d;

    invoke-virtual {p1}, Lk8/d;->I()V

    :cond_d
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .registers 3

    const/4 p1, 0x5

    if-ne p2, p1, :cond_a

    .line 1
    iget-object p1, p0, Lk8/c$a;->a:Lk8/c;

    iget-object p1, p1, Lk8/c;->r:Lk8/d;

    invoke-virtual {p1}, Lk8/d;->J()V

    :cond_a
    return-void
.end method

###### Class k8.a (k8.a)
.class public final synthetic Lk8/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lk8/c;


# direct methods
.method public synthetic constructor <init>(Lk8/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk8/a;->a:Lk8/c;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lk8/a;->a:Lk8/c;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lk8/c;->s(Lk8/c;Z)V

    return-void
.end method

###### Class k8.b (k8.b)
.class public final synthetic Lk8/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Lk8/c;


# direct methods
.method public synthetic constructor <init>(Lk8/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk8/b;->a:Lk8/c;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lk8/b;->a:Lk8/c;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lk8/c;->t(Lk8/c;Z)V

    return-void
.end method

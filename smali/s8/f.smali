###### Class s8.f (s8.f)
.class public Ls8/f;
.super Landroidx/fragment/app/d;
.source "FirebaseLoginDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls8/f$a;
    }
.end annotation


# instance fields
.field private o:Lo8/a0;

.field private p:Ls8/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    return-void
.end method

.method public static synthetic o(Ls8/f;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Ls8/f;->v(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic p(Ls8/f;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Ls8/f;->t(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic q(Ls8/f;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ls8/f;->w(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic r(Ls8/f;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Ls8/f;->u(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Ls8/f;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Ls8/f;->x(Landroid/content/Intent;)V

    return-void
.end method

.method private t(Ljava/lang/Boolean;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/d;->dismiss()V

    return-void
.end method

.method private synthetic u(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Ls8/f;->p:Ls8/i;

    invoke-virtual {p1}, Ls8/i;->x()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    const-string v0, "http://tebakgambar.com/privacy-policy/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Ly8/a;->f(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private v(Ljava/lang/Boolean;)V
    .registers 6

    .line 1
    iget-object v0, p0, Ls8/f;->o:Lo8/a0;

    iget-object v0, v0, Lo8/a0;->P:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_11

    :cond_f
    const/16 v1, 0x8

    :goto_11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Ls8/f;->o:Lo8/a0;

    iget-object v0, v0, Lo8/a0;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 3
    iget-object v0, p0, Ls8/f;->o:Lo8/a0;

    iget-object v0, v0, Lo8/a0;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2d

    const/4 v1, 0x0

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x4

    :goto_2e
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Ls8/f;->o:Lo8/a0;

    iget-object v0, v0, Lo8/a0;->U:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3c

    const/4 v2, 0x0

    :cond_3c
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private w(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private x(Landroid/content/Intent;)V
    .registers 3

    const/16 v0, 0x1f4a

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getTheme()I
    .registers 2

    const v0, 0x7f1300ec

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Ls8/f;->p:Ls8/i;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/k0;->b(Landroidx/fragment/app/e;)Landroidx/lifecycle/h0;

    move-result-object v0

    const-class v1, Lj8/x;

    const-string v2, "activityViewModel"

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/h0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object v0

    check-cast v0, Ls8/f$a;

    iput-object v0, p1, Ls8/i;->y:Ls8/f$a;

    .line 3
    iget-object p1, p0, Ls8/f;->p:Ls8/i;

    invoke-virtual {p1}, Ls8/i;->r()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1f4a

    if-ne p1, v0, :cond_14

    const/4 v0, -0x1

    if-ne p2, v0, :cond_14

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->c(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 3
    iget-object p2, p0, Ls8/f;->p:Ls8/i;

    invoke-virtual {p2, p1}, Ls8/i;->w(Lcom/google/android/gms/tasks/Task;)V

    goto :goto_1b

    .line 4
    :cond_14
    iget-object v0, p0, Ls8/f;->p:Ls8/i;

    iget-object v0, v0, Ls8/i;->A:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    :goto_1b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/h0;

    move-result-object p1

    const-class v0, Ls8/i;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/h0;->a(Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    check-cast p1, Ls8/i;

    iput-object p1, p0, Ls8/f;->p:Ls8/i;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Ls8/i;->x:Ljava/lang/ref/WeakReference;

    .line 4
    iget-object p1, p0, Ls8/f;->p:Ls8/i;

    iget-object p1, p1, Ls8/i;->v:Ly8/u;

    new-instance v0, Ls8/d;

    invoke-direct {v0, p0}, Ls8/d;-><init>(Ls8/f;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 5
    iget-object p1, p0, Ls8/f;->p:Ls8/i;

    iget-object p1, p1, Ls8/i;->u:Ly8/u;

    new-instance v0, Ls8/e;

    invoke-direct {v0, p0}, Ls8/e;-><init>(Ls8/f;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 6
    iget-object p1, p0, Ls8/f;->p:Ls8/i;

    iget-object p1, p1, Ls8/i;->w:Ly8/u;

    new-instance v0, Ls8/c;

    invoke-direct {v0, p0}, Ls8/c;-><init>(Ls8/f;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 7
    iget-object p1, p0, Ls8/f;->p:Ls8/i;

    iget-object p1, p1, Ls8/i;->t:Ly8/u;

    new-instance v0, Ls8/b;

    invoke-direct {v0, p0}, Ls8/b;-><init>(Ls8/f;)V

    invoke-virtual {p1, p0, v0}, Ly8/u;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d004a

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/g;->h(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lo8/a0;

    iput-object p1, p0, Ls8/f;->o:Lo8/a0;

    .line 2
    iget-object p1, p1, Lo8/a0;->V:Lcom/tebakgambar/component/CustomTextView;

    new-instance p2, Ls8/a;

    invoke-direct {p2, p0}, Ls8/a;-><init>(Ls8/f;)V

    invoke-virtual {p1, p2}, Lcom/tebakgambar/component/CustomTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p1, p0, Ls8/f;->o:Lo8/a0;

    iget-object p2, p0, Ls8/f;->p:Ls8/i;

    invoke-virtual {p1, p2}, Lo8/a0;->u0(Ls8/i;)V

    .line 4
    iget-object p1, p0, Ls8/f;->o:Lo8/a0;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->S()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Ls8/f;->p:Ls8/i;

    invoke-virtual {p1}, Ls8/i;->t()V

    return-void
.end method

###### Class s8.f.a (s8.f$a)
.class public interface abstract Ls8/f$a;
.super Ljava/lang/Object;
.source "FirebaseLoginDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls8/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lg5/s;)V
.end method

.method public abstract b()Ljava/lang/String;
.end method

###### Class s8.a (s8.a)
.class public final synthetic Ls8/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Ls8/f;


# direct methods
.method public synthetic constructor <init>(Ls8/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8/a;->o:Ls8/f;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Ls8/a;->o:Ls8/f;

    invoke-static {v0, p1}, Ls8/f;->r(Ls8/f;Landroid/view/View;)V

    return-void
.end method

###### Class s8.b (s8.b)
.class public final synthetic Ls8/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Ls8/f;


# direct methods
.method public synthetic constructor <init>(Ls8/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8/b;->a:Ls8/f;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Ls8/b;->a:Ls8/f;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, p1}, Ls8/f;->s(Ls8/f;Landroid/content/Intent;)V

    return-void
.end method

###### Class s8.c (s8.c)
.class public final synthetic Ls8/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Ls8/f;


# direct methods
.method public synthetic constructor <init>(Ls8/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8/c;->a:Ls8/f;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Ls8/c;->a:Ls8/f;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Ls8/f;->o(Ls8/f;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class s8.d (s8.d)
.class public final synthetic Ls8/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Ls8/f;


# direct methods
.method public synthetic constructor <init>(Ls8/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8/d;->a:Ls8/f;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Ls8/d;->a:Ls8/f;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Ls8/f;->p(Ls8/f;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class s8.e (s8.e)
.class public final synthetic Ls8/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:Ls8/f;


# direct methods
.method public synthetic constructor <init>(Ls8/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8/e;->a:Ls8/f;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Ls8/e;->a:Ls8/f;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Ls8/f;->q(Ls8/f;Ljava/lang/String;)V

    return-void
.end method

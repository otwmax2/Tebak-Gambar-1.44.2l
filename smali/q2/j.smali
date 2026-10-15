###### Class q2.j (q2.j)
.class public Lq2/j;
.super Landroid/app/Fragment;
.source "RequestManagerFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq2/j$b;
    }
.end annotation


# instance fields
.field private final o:Lq2/a;

.field private final p:Lq2/l;

.field private q:Lv1/j;

.field private final r:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lq2/j;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lq2/j;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    new-instance v0, Lq2/a;

    invoke-direct {v0}, Lq2/a;-><init>()V

    invoke-direct {p0, v0}, Lq2/j;-><init>(Lq2/a;)V

    return-void
.end method

.method constructor <init>(Lq2/a;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 3
    new-instance v0, Lq2/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lq2/j$b;-><init>(Lq2/j;Lq2/j$a;)V

    iput-object v0, p0, Lq2/j;->p:Lq2/l;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lq2/j;->r:Ljava/util/HashSet;

    .line 5
    iput-object p1, p0, Lq2/j;->o:Lq2/a;

    return-void
.end method

.method private a(Lq2/j;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lq2/j;->r:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private e(Lq2/j;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lq2/j;->r:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method b()Lq2/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lq2/j;->o:Lq2/a;

    return-object v0
.end method

.method public c()Lv1/j;
    .registers 2

    .line 1
    iget-object v0, p0, Lq2/j;->q:Lv1/j;

    return-object v0
.end method

.method public d()Lq2/l;
    .registers 2

    .line 1
    iget-object v0, p0, Lq2/j;->p:Lq2/l;

    return-object v0
.end method

.method public f(Lv1/j;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lq2/j;->q:Lv1/j;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    :try_start_3
    invoke-static {}, Lq2/k;->c()Lq2/k;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lq2/k;->h(Landroid/app/FragmentManager;)Lq2/j;

    move-result-object p1

    iput-object p1, p0, Lq2/j;->s:Lq2/j;

    if-eq p1, p0, :cond_2a

    .line 3
    invoke-direct {p1, p0}, Lq2/j;->a(Lq2/j;)V
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_1a} :catch_1b

    goto :goto_2a

    :catch_1b
    move-exception p1

    const/4 v0, 0x5

    const-string v1, "RMFragment"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "Unable to register fragment with root"

    .line 5
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    :goto_2a
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lq2/j;->o:Lq2/a;

    invoke-virtual {v0}, Lq2/a;->b()V

    return-void
.end method

.method public onDetach()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 2
    iget-object v0, p0, Lq2/j;->s:Lq2/j;

    if-eqz v0, :cond_d

    .line 3
    invoke-direct {v0, p0}, Lq2/j;->e(Lq2/j;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lq2/j;->s:Lq2/j;

    :cond_d
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .line 1
    iget-object v0, p0, Lq2/j;->q:Lv1/j;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lv1/j;->A()V

    :cond_7
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lq2/j;->o:Lq2/a;

    invoke-virtual {v0}, Lq2/a;->c()V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lq2/j;->o:Lq2/a;

    invoke-virtual {v0}, Lq2/a;->d()V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lq2/j;->q:Lv1/j;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Lv1/j;->B(I)V

    :cond_7
    return-void
.end method

###### Class q2.j.a (q2.j$a)
.class synthetic Lq2/j$a;
.super Ljava/lang/Object;
.source "RequestManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class q2.j.b (q2.j$b)
.class Lq2/j$b;
.super Ljava/lang/Object;
.source "RequestManagerFragment.java"

# interfaces
.implements Lq2/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lq2/j;


# direct methods
.method private constructor <init>(Lq2/j;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lq2/j$b;->a:Lq2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lq2/j;Lq2/j$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lq2/j$b;-><init>(Lq2/j;)V

    return-void
.end method

###### Class v4.i (v4.i)
.class final Lv4/i;
.super Lv4/b;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field final synthetic p:Landroid/os/IBinder;

.field final synthetic q:Lv4/l;


# direct methods
.method constructor <init>(Lv4/l;Landroid/os/IBinder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lv4/i;->q:Lv4/l;

    iput-object p2, p0, Lv4/i;->p:Landroid/os/IBinder;

    invoke-direct {p0}, Lv4/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lv4/i;->q:Lv4/l;

    iget-object v0, v0, Lv4/l;->o:Lv4/m;

    invoke-static {v0}, Lv4/m;->g(Lv4/m;)Lv4/h;

    move-result-object v1

    iget-object v2, p0, Lv4/i;->p:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lv4/h;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    invoke-static {v0, v1}, Lv4/m;->l(Lv4/m;Landroid/os/IInterface;)V

    iget-object v0, p0, Lv4/i;->q:Lv4/l;

    iget-object v0, v0, Lv4/l;->o:Lv4/m;

    .line 2
    invoke-static {v0}, Lv4/m;->o(Lv4/m;)V

    iget-object v0, p0, Lv4/i;->q:Lv4/l;

    iget-object v0, v0, Lv4/l;->o:Lv4/m;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lv4/m;->k(Lv4/m;Z)V

    iget-object v0, p0, Lv4/i;->q:Lv4/l;

    iget-object v0, v0, Lv4/l;->o:Lv4/m;

    invoke-static {v0}, Lv4/m;->h(Lv4/m;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 5
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2e

    :cond_3e
    iget-object v0, p0, Lv4/i;->q:Lv4/l;

    iget-object v0, v0, Lv4/l;->o:Lv4/m;

    invoke-static {v0}, Lv4/m;->h(Lv4/m;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

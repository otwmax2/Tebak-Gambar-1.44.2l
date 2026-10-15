###### Class v4.j (v4.j)
.class final Lv4/j;
.super Lv4/b;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field final synthetic p:Lv4/l;


# direct methods
.method constructor <init>(Lv4/l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lv4/j;->p:Lv4/l;

    invoke-direct {p0}, Lv4/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lv4/j;->p:Lv4/l;

    iget-object v0, v0, Lv4/l;->o:Lv4/m;

    invoke-static {v0}, Lv4/m;->p(Lv4/m;)V

    iget-object v0, p0, Lv4/j;->p:Lv4/l;

    iget-object v0, v0, Lv4/l;->o:Lv4/m;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lv4/m;->l(Lv4/m;Landroid/os/IInterface;)V

    iget-object v0, p0, Lv4/j;->p:Lv4/l;

    iget-object v0, v0, Lv4/l;->o:Lv4/m;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lv4/m;->k(Lv4/m;Z)V

    return-void
.end method

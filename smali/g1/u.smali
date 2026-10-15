###### Class g1.u (g1.u)
.class Lg1/u;
.super Lg1/z;
.source "ViewGroupOverlayApi14.java"

# interfaces
.implements Lg1/w;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lg1/z;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static g(Landroid/view/ViewGroup;)Lg1/u;
    .registers 1

    .line 1
    invoke-static {p0}, Lg1/z;->e(Landroid/view/View;)Lg1/z;

    move-result-object p0

    check-cast p0, Lg1/u;

    return-object p0
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/z;->a:Lg1/z$a;

    invoke-virtual {v0, p1}, Lg1/z$a;->b(Landroid/view/View;)V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lg1/z;->a:Lg1/z$a;

    invoke-virtual {v0, p1}, Lg1/z$a;->g(Landroid/view/View;)V

    return-void
.end method

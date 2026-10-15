###### Class x7.a (x7.a)
.class public abstract Lx7/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lx7/b;Lx7/c;)Lx7/a;
    .registers 3

    invoke-static {}, La8/e;->a()V

    const-string v0, "AdSessionConfiguration is null"

    invoke-static {p0, v0}, La8/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdSessionContext is null"

    invoke-static {p1, v0}, La8/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lx7/k;

    invoke-direct {v0, p0, p1}, Lx7/k;-><init>(Lx7/b;Lx7/c;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()V
.end method

.method public abstract c(Landroid/view/View;)V
.end method

.method public abstract d()V
.end method

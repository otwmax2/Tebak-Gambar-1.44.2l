###### Class v7.c (v7.c)
.class public Lv7/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .registers 3

    const-string v0, "Application Context cannot be null"

    invoke-static {p1, v0}, La8/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lv7/c;->c(Landroid/content/Context;)V

    invoke-virtual {p0}, Lv7/c;->d()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lv7/c;->b(Z)V

    invoke-static {}, Ly7/f;->c()Ly7/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly7/f;->d(Landroid/content/Context;)V

    invoke-static {}, Ly7/b;->a()Ly7/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly7/b;->b(Landroid/content/Context;)V

    invoke-static {p1}, La8/b;->c(Landroid/content/Context;)V

    invoke-static {}, Ly7/d;->a()Ly7/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly7/d;->b(Landroid/content/Context;)V

    :cond_25
    return-void
.end method

.method b(Z)V
    .registers 2

    iput-boolean p1, p0, Lv7/c;->a:Z

    return-void
.end method

.method d()Z
    .registers 2

    iget-boolean v0, p0, Lv7/c;->a:Z

    return v0
.end method

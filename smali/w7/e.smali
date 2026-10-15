###### Class w7.e (w7.e)
.class public Lw7/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;Landroid/content/Context;Lw7/a;Lw7/c;)Lw7/d;
    .registers 6

    new-instance v0, Lw7/d;

    invoke-direct {v0, p1, p2, p3, p4}, Lw7/d;-><init>(Landroid/os/Handler;Landroid/content/Context;Lw7/a;Lw7/c;)V

    return-object v0
.end method

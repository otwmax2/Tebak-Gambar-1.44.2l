###### Class w7.b (w7.b)
.class public Lw7/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lw7/a;
    .registers 2

    new-instance v0, Lw7/a;

    invoke-direct {v0}, Lw7/a;-><init>()V

    return-object v0
.end method

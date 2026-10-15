###### Class j3.c (j3.c)
.class public abstract Lj3/c;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;)Lj3/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lj3/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lj3/a;

    sget-object v1, Lj3/d;->o:Lj3/d;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lj3/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lj3/d;)V

    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Lj3/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lj3/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lj3/a;

    sget-object v1, Lj3/d;->p:Lj3/d;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lj3/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lj3/d;)V

    return-object v0
.end method

.method public static f(Ljava/lang/Object;)Lj3/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lj3/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lj3/a;

    sget-object v1, Lj3/d;->q:Lj3/d;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lj3/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lj3/d;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Integer;
.end method

.method public abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract c()Lj3/d;
.end method

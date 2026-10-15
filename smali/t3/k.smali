###### Class t3.k (t3.k)
.class public abstract Lt3/k;
.super Ljava/lang/Object;
.source "PersistedEvent.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLl3/p;Ll3/i;)Lt3/k;
    .registers 5

    .line 1
    new-instance v0, Lt3/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lt3/b;-><init>(JLl3/p;Ll3/i;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ll3/i;
.end method

.method public abstract c()J
.end method

.method public abstract d()Ll3/p;
.end method

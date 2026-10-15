###### Class w9.a (w9.a)
.class public abstract Lw9/a;
.super Lw9/c;
.source "PlatformRandom.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lw9/c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lw9/a;->f()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0, p1}, Lw9/d;->e(II)I

    move-result p1

    return p1
.end method

.method public c()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lw9/a;->f()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public d(I)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lw9/a;->f()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    return p1
.end method

.method public abstract f()Ljava/util/Random;
.end method

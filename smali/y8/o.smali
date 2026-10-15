###### Class y8.o (y8.o)
.class public Ly8/o;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# direct methods
.method public static a(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ly8/n;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_15

    aget-object v2, p1, v1

    .line 2
    invoke-static {p0, v2}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_f

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3
    :cond_f
    new-instance p0, Ly8/n;

    invoke-direct {p0, p1}, Ly8/n;-><init>([Ljava/lang/String;)V

    throw p0

    :cond_15
    return-void
.end method

.method public static b([I)Z
    .registers 6

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v2, v0, :cond_f

    aget v4, p0, v2

    if-nez v4, :cond_c

    add-int/lit8 v3, v3, 0x1

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2
    :cond_f
    array-length p0, p0

    if-ne v3, p0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

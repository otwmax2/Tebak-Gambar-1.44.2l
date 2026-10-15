###### Class androidx.core.net.a (androidx.core.net.a)
.class public final Landroidx/core/net/a;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/net/a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/net/ConnectivityManager;)Z
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 2
    invoke-static {p0}, Landroidx/core/net/a$a;->a(Landroid/net/ConnectivityManager;)Z

    move-result p0

    return p0

    .line 3
    :cond_b
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_13

    return v0

    .line 4
    :cond_13
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-eq p0, v0, :cond_21

    const/4 v1, 0x7

    if-eq p0, v1, :cond_21

    const/16 v1, 0x9

    if-eq p0, v1, :cond_21

    return v0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

###### Class androidx.core.net.a.C0031a (androidx.core.net.a$a)
.class Landroidx/core/net/a$a;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/net/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Landroid/net/ConnectivityManager;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p0

    return p0
.end method

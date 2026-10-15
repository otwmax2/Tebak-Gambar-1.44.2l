###### Class com.google.android.gms.auth.api.AuthProxyOptions (com.google.android.gms.auth.api.AuthProxyOptions)
.class public final Lcom/google/android/gms/auth/api/AuthProxyOptions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# static fields
.field public static final p:Lcom/google/android/gms/auth/api/AuthProxyOptions;


# instance fields
.field private final o:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/google/android/gms/auth/api/AuthProxyOptions;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/auth/api/AuthProxyOptions;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/auth/api/d;)V

    sput-object v1, Lcom/google/android/gms/auth/api/AuthProxyOptions;->p:Lcom/google/android/gms/auth/api/AuthProxyOptions;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/auth/api/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/AuthProxyOptions;->o:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/AuthProxyOptions;->o:Landroid/os/Bundle;

    .line 1
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/auth/api/AuthProxyOptions;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/auth/api/AuthProxyOptions;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/AuthProxyOptions;->o:Landroid/os/Bundle;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/auth/api/AuthProxyOptions;->o:Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/AuthProxyOptions;->o:Landroid/os/Bundle;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

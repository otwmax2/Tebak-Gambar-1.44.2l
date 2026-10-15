###### Class com.google.android.gms.internal.auth.zzfl (com.google.android.gms.internal.auth.zzfl)
.class final Lcom/google/android/gms/internal/auth/zzfl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/auth/zzfk;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/auth/zzfk;

    .line 3
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzfk;->h()Z

    move-result v0

    if-nez v0, :cond_14

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzfk;->b()Lcom/google/android/gms/internal/auth/zzfk;

    move-result-object p0

    .line 6
    :cond_14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzfk;->f(Lcom/google/android/gms/internal/auth/zzfk;)V

    :cond_17
    return-object p0
.end method

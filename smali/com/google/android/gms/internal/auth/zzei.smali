###### Class com.google.android.gms.internal.auth.zzei (com.google.android.gms.internal.auth.zzei)
.class final Lcom/google/android/gms/internal/auth/zzei;
.super Lcom/google/android/gms/internal/auth/zzeh;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzeh;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzel;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/auth/zzel;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/auth/zzep;

    iget-object p1, p1, Lcom/google/android/gms/internal/auth/zzep;->zzb:Lcom/google/android/gms/internal/auth/zzel;

    const/4 p1, 0x0

    throw p1
.end method

.method final b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/auth/zzep;

    iget-object p1, p1, Lcom/google/android/gms/internal/auth/zzep;->zzb:Lcom/google/android/gms/internal/auth/zzel;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method final c(Lcom/google/android/gms/internal/auth/zzfq;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

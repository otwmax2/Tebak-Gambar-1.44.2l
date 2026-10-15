###### Class com.google.android.gms.internal.firebase_auth.zzht (com.google.android.gms.internal.firebase_auth.zzht)
.class final Lcom/google/android/gms/internal/firebase_auth/zzht;
.super Lcom/google/android/gms/internal/firebase_auth/zzhu;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzhu<",
        "Lcom/google/android/gms/internal/firebase_auth/zzif$zze;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhu;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/util/Map$Entry;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zze;

    .line 2
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/firebase_auth/zzhv<",
            "Lcom/google/android/gms/internal/firebase_auth/zzif$zze;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzhv;

    return-object p1
.end method

.method final c(Lcom/google/android/gms/internal/firebase_auth/zzls;Ljava/util/Map$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_auth/zzls;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zze;

    .line 2
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final d(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;

    return p1
.end method

.method final e(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/firebase_auth/zzhv<",
            "Lcom/google/android/gms/internal/firebase_auth/zzif$zze;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzhv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->o()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzhv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzhv;

    iput-object v0, p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzhv;

    .line 4
    :cond_14
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzb;->zzc:Lcom/google/android/gms/internal/firebase_auth/zzhv;

    return-object p1
.end method

.method final f(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->k()V

    return-void
.end method

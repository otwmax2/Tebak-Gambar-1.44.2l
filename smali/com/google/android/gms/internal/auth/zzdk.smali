###### Class com.google.android.gms.internal.auth.zzdk (com.google.android.gms.internal.auth.zzdk)
.class public final Lcom/google/android/gms/internal/auth/zzdk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# direct methods
.method public static a(Lcom/google/android/gms/internal/auth/zzdg;)Lcom/google/android/gms/internal/auth/zzdg;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/auth/zzdg<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/auth/zzdg<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/auth/zzdi;

    if-nez v0, :cond_19

    instance-of v0, p0, Lcom/google/android/gms/internal/auth/zzdh;

    if-eqz v0, :cond_9

    goto :goto_19

    .line 2
    :cond_9
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/auth/zzdh;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth/zzdh;-><init>(Lcom/google/android/gms/internal/auth/zzdg;)V

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/auth/zzdi;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth/zzdi;-><init>(Lcom/google/android/gms/internal/auth/zzdg;)V

    :goto_18
    return-object v0

    :cond_19
    :goto_19
    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzdg;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/auth/zzdg<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/auth/zzdj;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth/zzdj;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

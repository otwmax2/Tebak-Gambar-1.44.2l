###### Class j5.w (j5.w)
.class public final Lj5/w;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# direct methods
.method public static a(Lg5/d;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfy;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    const-class v0, Lg5/w;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3
    check-cast p0, Lg5/w;

    .line 4
    invoke-static {p0, p1}, Lg5/w;->Y3(Lg5/w;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfy;

    move-result-object p0

    return-object p0

    .line 5
    :cond_16
    const-class v0, Lg5/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 6
    check-cast p0, Lg5/f;

    .line 7
    invoke-static {p0, p1}, Lg5/f;->Y3(Lg5/f;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfy;

    move-result-object p0

    return-object p0

    .line 8
    :cond_29
    const-class v0, Lg5/i0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 9
    check-cast p0, Lg5/i0;

    .line 10
    invoke-static {p0, p1}, Lg5/i0;->Y3(Lg5/i0;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfy;

    move-result-object p0

    return-object p0

    .line 11
    :cond_3c
    const-class v0, Lg5/v;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 12
    check-cast p0, Lg5/v;

    .line 13
    invoke-static {p0, p1}, Lg5/v;->Y3(Lg5/v;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfy;

    move-result-object p0

    return-object p0

    .line 14
    :cond_4f
    const-class v0, Lg5/h0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 15
    check-cast p0, Lg5/h0;

    .line 16
    invoke-static {p0, p1}, Lg5/h0;->Y3(Lg5/h0;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfy;

    move-result-object p0

    return-object p0

    .line 17
    :cond_62
    const-class v0, Lg5/o0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 18
    check-cast p0, Lg5/o0;

    .line 19
    invoke-static {p0, p1}, Lg5/o0;->b4(Lg5/o0;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfy;

    move-result-object p0

    return-object p0

    .line 20
    :cond_75
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported credential type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

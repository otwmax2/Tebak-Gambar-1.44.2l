###### Class com.google.android.gms.internal.firebase_auth.zzkj (com.google.android.gms.internal.firebase_auth.zzkj)
.class final Lcom/google/android/gms/internal/firebase_auth/zzkj;
.super Lcom/google/android/gms/internal/firebase_auth/zzkp;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzkp;"
    }
.end annotation


# instance fields
.field private final synthetic p:Lcom/google/android/gms/internal/firebase_auth/zzki;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzki;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzkj;->p:Lcom/google/android/gms/internal/firebase_auth/zzki;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzkp;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzki;Lcom/google/android/gms/internal/firebase_auth/zzkh;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzki;Lcom/google/android/gms/internal/firebase_auth/zzkh;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkj;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzki;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzkk;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzkj;->p:Lcom/google/android/gms/internal/firebase_auth/zzki;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzkk;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzki;Lcom/google/android/gms/internal/firebase_auth/zzkh;)V

    return-object v0
.end method

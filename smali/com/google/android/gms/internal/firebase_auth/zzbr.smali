###### Class com.google.android.gms.internal.firebase_auth.zzbr (com.google.android.gms.internal.firebase_auth.zzbr)
.class final Lcom/google/android/gms/internal/firebase_auth/zzbr;
.super Lcom/google/android/gms/internal/firebase_auth/zzbg;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private final synthetic q:Lcom/google/android/gms/internal/firebase_auth/zzbo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzbo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbr;->q:Lcom/google/android/gms/internal/firebase_auth/zzbo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzbg;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbr;->q:Lcom/google/android/gms/internal/firebase_auth/zzbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzbo;->n(Lcom/google/android/gms/internal/firebase_auth/zzbo;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzav;->a(II)I

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbr;->q:Lcom/google/android/gms/internal/firebase_auth/zzbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzbo;->o(Lcom/google/android/gms/internal/firebase_auth/zzbo;)[Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbr;->q:Lcom/google/android/gms/internal/firebase_auth/zzbo;

    .line 3
    aget-object v0, v0, p1

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_auth/zzbo;->o(Lcom/google/android/gms/internal/firebase_auth/zzbo;)[Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    .line 5
    aget-object p1, v1, p1

    .line 6
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbr;->q:Lcom/google/android/gms/internal/firebase_auth/zzbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzbo;->n(Lcom/google/android/gms/internal/firebase_auth/zzbo;)I

    move-result v0

    return v0
.end method

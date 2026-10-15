###### Class com.google.android.gms.internal.firebase_auth.zzku (com.google.android.gms.internal.firebase_auth.zzku)
.class final Lcom/google/android/gms/internal/firebase_auth/zzku;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzkt;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/firebase_auth/zzgv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzgv;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzku;->a:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(I)B
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzku;->a:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->c(I)B

    move-result p1

    return p1
.end method

.method public final zza()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzku;->a:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->g()I

    move-result v0

    return v0
.end method

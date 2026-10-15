###### Class com.google.android.gms.internal.firebase_auth.zzaz (com.google.android.gms.internal.firebase_auth.zzaz)
.class final Lcom/google/android/gms/internal/firebase_auth/zzaz;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzba;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/firebase_auth/zzal;


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/firebase_auth/zzau;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzaz;->a:Lcom/google/android/gms/internal/firebase_auth/zzal;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzal;->a(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/firebase_auth/zzam;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzay;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzay;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzaz;Lcom/google/android/gms/internal/firebase_auth/zzau;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/firebase_auth/zzam;)V

    return-object v1
.end method

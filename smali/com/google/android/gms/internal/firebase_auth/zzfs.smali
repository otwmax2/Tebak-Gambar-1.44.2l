###### Class com.google.android.gms.internal.firebase_auth.zzfs (com.google.android.gms.internal.firebase_auth.zzfs)
.class public final Lcom/google/android/gms/internal/firebase_auth/zzfs;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private a:Lcom/google/android/gms/internal/firebase_auth/zzfw;

.field private b:Lcom/google/android/gms/internal/firebase_auth/zzfw;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->c:Z

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->b:Lcom/google/android/gms/internal/firebase_auth/zzfw;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfs;->a:Lcom/google/android/gms/internal/firebase_auth/zzfw;

    return-void
.end method

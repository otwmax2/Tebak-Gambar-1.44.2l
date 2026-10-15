###### Class com.google.android.gms.internal.firebase_auth.zzay (com.google.android.gms.internal.firebase_auth.zzay)
.class final Lcom/google/android/gms/internal/firebase_auth/zzay;
.super Lcom/google/android/gms/internal/firebase_auth/zzbb;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private final synthetic v:Lcom/google/android/gms/internal/firebase_auth/zzam;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzaz;Lcom/google/android/gms/internal/firebase_auth/zzau;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/firebase_auth/zzam;)V
    .registers 5

    .line 1
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_auth/zzay;->v:Lcom/google/android/gms/internal/firebase_auth/zzam;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzbb;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzau;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final d(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzay;->v:Lcom/google/android/gms/internal/firebase_auth/zzam;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzam;->a(I)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzay;->v:Lcom/google/android/gms/internal/firebase_auth/zzam;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzam;->c()I

    move-result p1

    return p1

    :cond_f
    const/4 p1, -0x1

    return p1
.end method

.method public final e(I)I
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzay;->v:Lcom/google/android/gms/internal/firebase_auth/zzam;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzam;->b()I

    move-result p1

    return p1
.end method

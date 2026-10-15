###### Class com.google.android.gms.internal.firebase_auth.zzah (com.google.android.gms.internal.firebase_auth.zzah)
.class final Lcom/google/android/gms/internal/firebase_auth/zzah;
.super Lcom/google/android/gms/internal/firebase_auth/zzai;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private final a:C


# direct methods
.method constructor <init>(C)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzai;-><init>()V

    const/16 p1, 0x2e

    .line 2
    iput-char p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzah;->a:C

    return-void
.end method


# virtual methods
.method public final b(C)Z
    .registers 3

    .line 1
    iget-char v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzah;->a:C

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-char v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzah;->a:C

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzaf;->c(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CharMatcher.is(\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

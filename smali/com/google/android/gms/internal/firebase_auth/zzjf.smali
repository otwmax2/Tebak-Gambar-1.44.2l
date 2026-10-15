###### Class com.google.android.gms.internal.firebase_auth.zzjf (com.google.android.gms.internal.firebase_auth.zzjf)
.class public final Lcom/google/android/gms/internal/firebase_auth/zzjf;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method static a(Lcom/google/android/gms/internal/firebase_auth/zzji;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_auth/zzji<",
            "TK;TV;>;TK;TV;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzji;->a:Lcom/google/android/gms/internal/firebase_auth/zzlm;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->b(Lcom/google/android/gms/internal/firebase_auth/zzlm;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_auth/zzji;->b:Lcom/google/android/gms/internal/firebase_auth/zzlm;

    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->b(Lcom/google/android/gms/internal/firebase_auth/zzlm;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method static b(Lcom/google/android/gms/internal/firebase_auth/zzhm;Lcom/google/android/gms/internal/firebase_auth/zzji;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_auth/zzhm;",
            "Lcom/google/android/gms/internal/firebase_auth/zzji<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase_auth/zzji;->a:Lcom/google/android/gms/internal/firebase_auth/zzlm;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->f(Lcom/google/android/gms/internal/firebase_auth/zzhm;Lcom/google/android/gms/internal/firebase_auth/zzlm;ILjava/lang/Object;)V

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_auth/zzji;->b:Lcom/google/android/gms/internal/firebase_auth/zzlm;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->f(Lcom/google/android/gms/internal/firebase_auth/zzhm;Lcom/google/android/gms/internal/firebase_auth/zzlm;ILjava/lang/Object;)V

    return-void
.end method

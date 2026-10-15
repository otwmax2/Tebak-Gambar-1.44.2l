###### Class com.google.android.gms.internal.drive.zzbl (com.google.android.gms.internal.drive.zzbl)
.class final Lcom/google/android/gms/internal/drive/zzbl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Result;)V
    .registers 5

    .line 1
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->a4()Z

    move-result v0

    if-nez v0, :cond_19

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzbi;->c()Lcom/google/android/gms/common/internal/GmsLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "DriveContentsImpl"

    const-string v2, "Error discarding contents, status: %s"

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    return-void
.end method

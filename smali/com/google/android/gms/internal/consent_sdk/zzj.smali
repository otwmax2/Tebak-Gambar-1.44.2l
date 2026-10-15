###### Class com.google.android.gms.internal.consent_sdk.zzj (com.google.android.gms.internal.consent_sdk.zzj)
.class public final Lcom/google/android/gms/internal/consent_sdk/zzj;
.super Ljava/lang/Exception;
.source "com.google.android.ump:user-messaging-platform@@2.0.0"


# instance fields
.field private final o:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzj;->o:I

    return-void
.end method


# virtual methods
.method public final a()Lz4/e;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "UserMessagingPlatform"

    if-nez v0, :cond_10

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 4
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 5
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :goto_1b
    new-instance v0, Lz4/e;

    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzj;->o:I

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lz4/e;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

###### Class com.google.android.play.core.assetpacks.d1 (com.google.android.play.core.assetpacks.d1)
.class final Lcom/google/android/play/core/assetpacks/d1;
.super Ljava/lang/RuntimeException;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field final o:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/play/core/assetpacks/d1;->o:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/google/android/play/core/assetpacks/d1;->o:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/play/core/assetpacks/d1;->o:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 4

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p3, p0, Lcom/google/android/play/core/assetpacks/d1;->o:I

    return-void
.end method

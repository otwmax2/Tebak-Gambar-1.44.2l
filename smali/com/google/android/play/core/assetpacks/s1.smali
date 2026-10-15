###### Class com.google.android.play.core.assetpacks.s1 (com.google.android.play.core.assetpacks.s1)
.class final Lcom/google/android/play/core/assetpacks/s1;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field final a:Ljava/lang/String;

.field final b:J

.field final c:Ljava/lang/String;

.field d:I

.field final e:J

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/play/core/assetpacks/u1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;JIJLjava/util/List;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JIJ",
            "Ljava/util/List<",
            "Lcom/google/android/play/core/assetpacks/u1;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/s1;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/play/core/assetpacks/s1;->b:J

    iput p4, p0, Lcom/google/android/play/core/assetpacks/s1;->d:I

    iput-wide p5, p0, Lcom/google/android/play/core/assetpacks/s1;->e:J

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/s1;->f:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/s1;->c:Ljava/lang/String;

    return-void
.end method

###### Class com.vungle.warren.vision.VisionConfig (com.vungle.warren.vision.VisionConfig)
.class public Lcom/vungle/warren/vision/VisionConfig;
.super Ljava/lang/Object;
.source "VisionConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/vision/VisionConfig$Limits;
    }
.end annotation


# instance fields
.field public aggregationFilters:[Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "aggregation_filters"
    .end annotation
.end field

.field public aggregationTimeWindows:[I
    .annotation runtime Lb7/c;
        value = "aggregation_time_windows"
    .end annotation
.end field

.field public enabled:Z
    .annotation runtime Lb7/c;
        value = "enabled"
    .end annotation
.end field

.field public viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;
    .annotation runtime Lb7/c;
        value = "view_limit"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.vungle.warren.vision.VisionConfig.Limits (com.vungle.warren.vision.VisionConfig$Limits)
.class public Lcom/vungle/warren/vision/VisionConfig$Limits;
.super Ljava/lang/Object;
.source "VisionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/vision/VisionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Limits"
.end annotation


# instance fields
.field public device:I
    .annotation runtime Lb7/c;
        value = "device"
    .end annotation
.end field

.field public mobile:I
    .annotation runtime Lb7/c;
        value = "mobile"
    .end annotation
.end field

.field public wifi:I
    .annotation runtime Lb7/c;
        value = "wifi"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

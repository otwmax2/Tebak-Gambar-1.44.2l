###### Class androidx.core.app.q (androidx.core.app.q)
.class public final Landroidx/core/app/q;
.super Ljava/lang/Object;
.source "PictureInPictureModeChangedInfo.java"


# instance fields
.field private final a:Z

.field private final b:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Landroidx/core/app/q;->a:Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroidx/core/app/q;->b:Landroid/content/res/Configuration;

    return-void
.end method

.method public constructor <init>(ZLandroid/content/res/Configuration;)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-boolean p1, p0, Landroidx/core/app/q;->a:Z

    .line 6
    iput-object p2, p0, Landroidx/core/app/q;->b:Landroid/content/res/Configuration;

    return-void
.end method

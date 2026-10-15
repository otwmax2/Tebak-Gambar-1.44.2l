###### Class u4.c (u4.c)
.class final Lu4/c;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field private static final a:Lu4/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lu4/d;

    invoke-direct {v0}, Lu4/d;-><init>()V

    sput-object v0, Lu4/c;->a:Lu4/d;

    return-void
.end method

.method static bridge synthetic a()Lu4/d;
    .registers 1

    sget-object v0, Lu4/c;->a:Lu4/d;

    return-object v0
.end method

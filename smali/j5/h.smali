###### Class j5.h (j5.h)
.class public final Lj5/h;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# static fields
.field private static b:Lj5/h;


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lj5/h;->a:Z

    return-void
.end method

.method public static a()Lj5/h;
    .registers 1

    .line 1
    sget-object v0, Lj5/h;->b:Lj5/h;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lj5/h;

    invoke-direct {v0}, Lj5/h;-><init>()V

    sput-object v0, Lj5/h;->b:Lj5/h;

    .line 3
    :cond_b
    sget-object v0, Lj5/h;->b:Lj5/h;

    return-object v0
.end method

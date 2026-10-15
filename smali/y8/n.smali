###### Class y8.n (y8.n)
.class public Ly8/n;
.super Ljava/lang/Exception;
.source "PermissionNeededException.java"


# instance fields
.field private o:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput-object p1, p0, Ly8/n;->o:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ly8/n;->o:[Ljava/lang/String;

    return-object v0
.end method

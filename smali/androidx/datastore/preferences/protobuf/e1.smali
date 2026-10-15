###### Class androidx.datastore.preferences.protobuf.e1 (androidx.datastore.preferences.protobuf.e1)
.class final Landroidx/datastore/preferences/protobuf/e1;
.super Ljava/lang/Object;
.source "RawMessageInfo.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/p0;


# instance fields
.field private final a:Landroidx/datastore/preferences/protobuf/r0;

.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/Object;

.field private final d:I


# direct methods
.method constructor <init>(Landroidx/datastore/preferences/protobuf/r0;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/e1;->a:Landroidx/datastore/preferences/protobuf/r0;

    .line 3
    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/e1;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/e1;->c:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const p3, 0xd800

    if-ge p1, p3, :cond_16

    .line 6
    iput p1, p0, Landroidx/datastore/preferences/protobuf/e1;->d:I

    goto :goto_30

    :cond_16
    and-int/lit16 p1, p1, 0x1fff

    const/16 v0, 0xd

    const/4 v1, 0x1

    :goto_1b
    add-int/lit8 v2, v1, 0x1

    .line 7
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, p3, :cond_2b

    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v0

    or-int/2addr p1, v1

    add-int/lit8 v0, v0, 0xd

    move v1, v2

    goto :goto_1b

    :cond_2b
    shl-int p2, v1, v0

    or-int/2addr p1, p2

    .line 8
    iput p1, p0, Landroidx/datastore/preferences/protobuf/e1;->d:I

    :goto_30
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e1;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public b()Landroidx/datastore/preferences/protobuf/r0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/e1;->a:Landroidx/datastore/preferences/protobuf/r0;

    return-object v0
.end method

.method public c()Landroidx/datastore/preferences/protobuf/b1;
    .registers 3

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e1;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    sget-object v0, Landroidx/datastore/preferences/protobuf/b1;->o:Landroidx/datastore/preferences/protobuf/b1;

    goto :goto_b

    :cond_9
    sget-object v0, Landroidx/datastore/preferences/protobuf/b1;->p:Landroidx/datastore/preferences/protobuf/b1;

    :goto_b
    return-object v0
.end method

.method d()[Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/e1;->c:[Ljava/lang/Object;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/e1;->b:Ljava/lang/String;

    return-object v0
.end method

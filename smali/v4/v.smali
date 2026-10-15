###### Class v4.v (v4.v)
.class public final Lv4/v;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# direct methods
.method public static a(Lv4/w;Ljava/io/InputStream;Ljava/io/OutputStream;J)J
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 1
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1000

    move-object v3, p1

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v9, Ljava/io/DataInputStream;

    .line 2
    invoke-direct {v9, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const v2, -0x2e002e01

    if-eq v1, v2, :cond_46

    new-instance v0, Lv4/u;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "%x"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unexpected magic="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    .line 5
    :cond_3d
    new-instance v1, Ljava/lang/String;

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_42
    invoke-direct {v0, v1}, Lv4/u;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_46
    invoke-virtual {v9}, Ljava/io/DataInputStream;->read()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_122

    const-wide/16 v1, 0x0

    move-wide v10, v1

    :goto_50
    sub-long v7, p3, v10

    .line 8
    :try_start_52
    invoke-virtual {v9}, Ljava/io/DataInputStream;->read()I

    move-result v12
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_11d

    const/4 v1, -0x1

    if-eq v12, v1, :cond_115

    if-eqz v12, :cond_111

    const-string v2, "Unexpected end of patch"

    packed-switch v12, :pswitch_data_13e

    move-object v1, v0

    move-object v2, v9

    move-object v3, p2

    move v4, v12

    move-wide v5, v7

    .line 9
    :try_start_65
    invoke-static/range {v1 .. v6}, Lv4/v;->c([BLjava/io/DataInputStream;Ljava/io/OutputStream;IJ)V

    goto/16 :goto_10d

    .line 10
    :pswitch_6a
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 11
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v6, v12

    .line 12
    invoke-static/range {v1 .. v8}, Lv4/v;->b([BLv4/w;Ljava/io/OutputStream;JIJ)V

    goto/16 :goto_10d

    .line 13
    :pswitch_7b
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-long v4, v1

    .line 14
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v6, v12

    .line 15
    invoke-static/range {v1 .. v8}, Lv4/v;->b([BLv4/w;Ljava/io/OutputStream;JIJ)V

    goto/16 :goto_10d

    .line 16
    :pswitch_8d
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-long v4, v1

    .line 17
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v12

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v6, v12

    .line 18
    invoke-static/range {v1 .. v8}, Lv4/v;->b([BLv4/w;Ljava/io/OutputStream;JIJ)V

    goto/16 :goto_10d

    .line 19
    :pswitch_9f
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    int-to-long v4, v3

    .line 20
    invoke-virtual {v9}, Ljava/io/DataInputStream;->read()I

    move-result v12

    if-eq v12, v1, :cond_b3

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v6, v12

    .line 21
    invoke-static/range {v1 .. v8}, Lv4/v;->b([BLv4/w;Ljava/io/OutputStream;JIJ)V

    goto/16 :goto_10d

    .line 22
    :cond_b3
    new-instance v0, Ljava/io/IOException;

    .line 23
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :pswitch_b9
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    int-to-long v4, v1

    .line 25
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v6, v12

    .line 26
    invoke-static/range {v1 .. v8}, Lv4/v;->b([BLv4/w;Ljava/io/OutputStream;JIJ)V

    goto :goto_10d

    .line 27
    :pswitch_ca
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    int-to-long v4, v1

    .line 28
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v12

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v6, v12

    .line 29
    invoke-static/range {v1 .. v8}, Lv4/v;->b([BLv4/w;Ljava/io/OutputStream;JIJ)V

    goto :goto_10d

    .line 30
    :pswitch_db
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    int-to-long v4, v3

    .line 31
    invoke-virtual {v9}, Ljava/io/DataInputStream;->read()I

    move-result v12

    if-eq v12, v1, :cond_ee

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v6, v12

    .line 32
    invoke-static/range {v1 .. v8}, Lv4/v;->b([BLv4/w;Ljava/io/OutputStream;JIJ)V

    goto :goto_10d

    .line 33
    :cond_ee
    new-instance v0, Ljava/io/IOException;

    .line 34
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :pswitch_f4
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    move-object v1, v0

    move-object v2, v9

    move-object v3, p2

    move v4, v12

    move-wide v5, v7

    .line 36
    invoke-static/range {v1 .. v6}, Lv4/v;->c([BLjava/io/DataInputStream;Ljava/io/OutputStream;IJ)V

    goto :goto_10d

    .line 37
    :pswitch_101
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v12

    move-object v1, v0

    move-object v2, v9

    move-object v3, p2

    move v4, v12

    move-wide v5, v7

    .line 38
    invoke-static/range {v1 .. v6}, Lv4/v;->c([BLjava/io/DataInputStream;Ljava/io/OutputStream;IJ)V
    :try_end_10d
    .catchall {:try_start_65 .. :try_end_10d} :catchall_11d

    :goto_10d
    int-to-long v1, v12

    add-long/2addr v10, v1

    goto/16 :goto_50

    .line 39
    :cond_111
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-wide v10

    :cond_115
    :try_start_115
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Patch file overrun"

    .line 40
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11d
    .catchall {:try_start_115 .. :try_end_11d} :catchall_11d

    :catchall_11d
    move-exception v0

    .line 41
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 42
    throw v0

    .line 43
    :cond_122
    new-instance v0, Lv4/u;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1e

    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lv4/u;-><init>(Ljava/lang/String;)V

    goto :goto_13c

    :goto_13b
    throw v0

    :goto_13c
    goto :goto_13b

    nop

    :pswitch_data_13e
    .packed-switch 0xf7
        :pswitch_101
        :pswitch_f4
        :pswitch_db
        :pswitch_ca
        :pswitch_b9
        :pswitch_9f
        :pswitch_8d
        :pswitch_7b
        :pswitch_6a
    .end packed-switch
.end method

.method private static b([BLv4/w;Ljava/io/OutputStream;JIJ)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move v1, p5

    if-ltz v1, :cond_62

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-ltz v4, :cond_5a

    int-to-long v8, v1

    cmp-long v2, v8, p6

    if-gtz v2, :cond_52

    .line 1
    :try_start_f
    new-instance v2, Lv4/x;

    move-object v4, v2

    move-object v5, p1

    move-wide v6, p3

    .line 2
    invoke-direct/range {v4 .. v9}, Lv4/x;-><init>(Lv4/w;JJ)V

    .line 3
    invoke-virtual {v2}, Lv4/w;->d()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1b
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_1b} :catch_49

    :goto_1b
    if-lez v1, :cond_45

    const/16 v3, 0x4000

    .line 4
    :try_start_1f
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_25
    if-ge v5, v3, :cond_3a

    sub-int v6, v3, v5

    .line 5
    invoke-virtual {v2, p0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_32

    add-int/2addr v5, v6

    goto :goto_25

    :cond_32
    new-instance v0, Ljava/io/IOException;

    const-string v1, "truncated input stream"

    .line 6
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    move-object v5, p2

    .line 7
    invoke-virtual {p2, p0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_40

    sub-int/2addr v1, v3

    goto :goto_1b

    :catchall_40
    move-exception v0

    .line 8
    :try_start_41
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_44

    :catchall_44
    :try_start_44
    throw v0

    .line 9
    :cond_45
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/io/EOFException; {:try_start_44 .. :try_end_48} :catch_49

    return-void

    :catch_49
    move-exception v0

    .line 10
    new-instance v1, Ljava/io/IOException;

    const-string v2, "patch underrun"

    .line 11
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 12
    :cond_52
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output length overrun"

    .line 13
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_5a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "inputOffset negative"

    .line 15
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_62
    new-instance v0, Ljava/io/IOException;

    const-string v1, "copyLength negative"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6b

    :goto_6a
    throw v0

    :goto_6b
    goto :goto_6a
.end method

.method private static c([BLjava/io/DataInputStream;Ljava/io/OutputStream;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_29

    int-to-long v0, p3

    cmp-long v2, v0, p4

    if-gtz v2, :cond_21

    :goto_7
    if-lez p3, :cond_20

    const/16 p4, 0x4000

    .line 1
    :try_start_b
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    const/4 p5, 0x0

    .line 2
    invoke-virtual {p1, p0, p5, p4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 3
    invoke-virtual {p2, p0, p5, p4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_16
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_16} :catch_18

    sub-int/2addr p3, p4

    goto :goto_7

    :catch_18
    new-instance p0, Ljava/io/IOException;

    const-string p1, "patch underrun"

    .line 4
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    return-void

    :cond_21
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Output length overrun"

    .line 5
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_29
    new-instance p0, Ljava/io/IOException;

    const-string p1, "copyLength negative"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_32

    :goto_31
    throw p0

    :goto_32
    goto :goto_31
.end method

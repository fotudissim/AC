
miprog:     formato del fichero elf32-i386


Desensamblado de la sección .init:

00001000 <_init>:
    1000:	f3 0f 1e fb          	endbr32 
    1004:	53                   	push   %ebx
    1005:	83 ec 08             	sub    $0x8,%esp
    1008:	e8 b3 00 00 00       	call   10c0 <__x86.get_pc_thunk.bx>
    100d:	81 c3 f3 2f 00 00    	add    $0x2ff3,%ebx
    1013:	8b 83 f4 ff ff ff    	mov    -0xc(%ebx),%eax
    1019:	85 c0                	test   %eax,%eax
    101b:	74 02                	je     101f <_init+0x1f>
    101d:	ff d0                	call   *%eax
    101f:	83 c4 08             	add    $0x8,%esp
    1022:	5b                   	pop    %ebx
    1023:	c3                   	ret    

Desensamblado de la sección .plt:

00001030 <__libc_start_main@plt-0x10>:
    1030:	ff b3 04 00 00 00    	push   0x4(%ebx)
    1036:	ff a3 08 00 00 00    	jmp    *0x8(%ebx)
    103c:	00 00                	add    %al,(%eax)
	...

00001040 <__libc_start_main@plt>:
    1040:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
    1046:	68 00 00 00 00       	push   $0x0
    104b:	e9 e0 ff ff ff       	jmp    1030 <_init+0x30>

00001050 <printf@plt>:
    1050:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
    1056:	68 08 00 00 00       	push   $0x8
    105b:	e9 d0 ff ff ff       	jmp    1030 <_init+0x30>

00001060 <puts@plt>:
    1060:	ff a3 14 00 00 00    	jmp    *0x14(%ebx)
    1066:	68 10 00 00 00       	push   $0x10
    106b:	e9 c0 ff ff ff       	jmp    1030 <_init+0x30>

00001070 <putchar@plt>:
    1070:	ff a3 18 00 00 00    	jmp    *0x18(%ebx)
    1076:	68 18 00 00 00       	push   $0x18
    107b:	e9 b0 ff ff ff       	jmp    1030 <_init+0x30>

00001080 <atoi@plt>:
    1080:	ff a3 1c 00 00 00    	jmp    *0x1c(%ebx)
    1086:	68 20 00 00 00       	push   $0x20
    108b:	e9 a0 ff ff ff       	jmp    1030 <_init+0x30>

Desensamblado de la sección .text:

00001090 <_start>:
    1090:	f3 0f 1e fb          	endbr32 
    1094:	31 ed                	xor    %ebp,%ebp
    1096:	5e                   	pop    %esi
    1097:	89 e1                	mov    %esp,%ecx
    1099:	83 e4 f0             	and    $0xfffffff0,%esp
    109c:	50                   	push   %eax
    109d:	54                   	push   %esp
    109e:	52                   	push   %edx
    109f:	e8 18 00 00 00       	call   10bc <_start+0x2c>
    10a4:	81 c3 5c 2f 00 00    	add    $0x2f5c,%ebx
    10aa:	6a 00                	push   $0x0
    10ac:	6a 00                	push   $0x0
    10ae:	51                   	push   %ecx
    10af:	56                   	push   %esi
    10b0:	ff b3 f8 ff ff ff    	push   -0x8(%ebx)
    10b6:	e8 85 ff ff ff       	call   1040 <__libc_start_main@plt>
    10bb:	f4                   	hlt    
    10bc:	8b 1c 24             	mov    (%esp),%ebx
    10bf:	c3                   	ret    

000010c0 <__x86.get_pc_thunk.bx>:
    10c0:	8b 1c 24             	mov    (%esp),%ebx
    10c3:	c3                   	ret    
    10c4:	66 90                	xchg   %ax,%ax
    10c6:	66 90                	xchg   %ax,%ax
    10c8:	66 90                	xchg   %ax,%ax
    10ca:	66 90                	xchg   %ax,%ax
    10cc:	66 90                	xchg   %ax,%ax
    10ce:	66 90                	xchg   %ax,%ax

000010d0 <deregister_tm_clones>:
    10d0:	e8 e4 00 00 00       	call   11b9 <__x86.get_pc_thunk.dx>
    10d5:	81 c2 2b 2f 00 00    	add    $0x2f2b,%edx
    10db:	8d 8a 38 00 00 00    	lea    0x38(%edx),%ecx
    10e1:	8d 82 38 00 00 00    	lea    0x38(%edx),%eax
    10e7:	39 c8                	cmp    %ecx,%eax
    10e9:	74 1d                	je     1108 <deregister_tm_clones+0x38>
    10eb:	8b 82 ec ff ff ff    	mov    -0x14(%edx),%eax
    10f1:	85 c0                	test   %eax,%eax
    10f3:	74 13                	je     1108 <deregister_tm_clones+0x38>
    10f5:	55                   	push   %ebp
    10f6:	89 e5                	mov    %esp,%ebp
    10f8:	83 ec 14             	sub    $0x14,%esp
    10fb:	51                   	push   %ecx
    10fc:	ff d0                	call   *%eax
    10fe:	83 c4 10             	add    $0x10,%esp
    1101:	c9                   	leave  
    1102:	c3                   	ret    
    1103:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1107:	90                   	nop
    1108:	c3                   	ret    
    1109:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001110 <register_tm_clones>:
    1110:	e8 a4 00 00 00       	call   11b9 <__x86.get_pc_thunk.dx>
    1115:	81 c2 eb 2e 00 00    	add    $0x2eeb,%edx
    111b:	55                   	push   %ebp
    111c:	89 e5                	mov    %esp,%ebp
    111e:	53                   	push   %ebx
    111f:	8d 8a 38 00 00 00    	lea    0x38(%edx),%ecx
    1125:	8d 82 38 00 00 00    	lea    0x38(%edx),%eax
    112b:	83 ec 04             	sub    $0x4,%esp
    112e:	29 c8                	sub    %ecx,%eax
    1130:	89 c3                	mov    %eax,%ebx
    1132:	c1 e8 1f             	shr    $0x1f,%eax
    1135:	c1 fb 02             	sar    $0x2,%ebx
    1138:	01 d8                	add    %ebx,%eax
    113a:	d1 f8                	sar    %eax
    113c:	74 14                	je     1152 <register_tm_clones+0x42>
    113e:	8b 92 fc ff ff ff    	mov    -0x4(%edx),%edx
    1144:	85 d2                	test   %edx,%edx
    1146:	74 0a                	je     1152 <register_tm_clones+0x42>
    1148:	83 ec 08             	sub    $0x8,%esp
    114b:	50                   	push   %eax
    114c:	51                   	push   %ecx
    114d:	ff d2                	call   *%edx
    114f:	83 c4 10             	add    $0x10,%esp
    1152:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1155:	c9                   	leave  
    1156:	c3                   	ret    
    1157:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    115e:	66 90                	xchg   %ax,%ax

00001160 <__do_global_dtors_aux>:
    1160:	f3 0f 1e fb          	endbr32 
    1164:	55                   	push   %ebp
    1165:	89 e5                	mov    %esp,%ebp
    1167:	53                   	push   %ebx
    1168:	e8 53 ff ff ff       	call   10c0 <__x86.get_pc_thunk.bx>
    116d:	81 c3 93 2e 00 00    	add    $0x2e93,%ebx
    1173:	83 ec 04             	sub    $0x4,%esp
    1176:	80 bb 40 00 00 00 00 	cmpb   $0x0,0x40(%ebx)
    117d:	75 28                	jne    11a7 <__do_global_dtors_aux+0x47>
    117f:	8b 83 f0 ff ff ff    	mov    -0x10(%ebx),%eax
    1185:	85 c0                	test   %eax,%eax
    1187:	74 12                	je     119b <__do_global_dtors_aux+0x3b>
    1189:	83 ec 0c             	sub    $0xc,%esp
    118c:	ff b3 24 00 00 00    	push   0x24(%ebx)
    1192:	ff 93 f0 ff ff ff    	call   *-0x10(%ebx)
    1198:	83 c4 10             	add    $0x10,%esp
    119b:	e8 30 ff ff ff       	call   10d0 <deregister_tm_clones>
    11a0:	c6 83 40 00 00 00 01 	movb   $0x1,0x40(%ebx)
    11a7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    11aa:	c9                   	leave  
    11ab:	c3                   	ret    
    11ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000011b0 <frame_dummy>:
    11b0:	f3 0f 1e fb          	endbr32 
    11b4:	e9 57 ff ff ff       	jmp    1110 <register_tm_clones>

000011b9 <__x86.get_pc_thunk.dx>:
    11b9:	8b 14 24             	mov    (%esp),%edx
    11bc:	c3                   	ret    

000011bd <Init>:
    11bd:	55                   	push   %ebp
    11be:	89 e5                	mov    %esp,%ebp
    11c0:	83 ec 10             	sub    $0x10,%esp
    11c3:	e8 bc 0d 00 00       	call   1f84 <__x86.get_pc_thunk.ax>
    11c8:	05 38 2e 00 00       	add    $0x2e38,%eax
    11cd:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    11d4:	e9 be 00 00 00       	jmp    1297 <Init+0xda>
    11d9:	8b 45 fc             	mov    -0x4(%ebp),%eax
    11dc:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    11e3:	8b 45 08             	mov    0x8(%ebp),%eax
    11e6:	01 c2                	add    %eax,%edx
    11e8:	8b 45 fc             	mov    -0x4(%ebp),%eax
    11eb:	89 02                	mov    %eax,(%edx)
    11ed:	8b 45 fc             	mov    -0x4(%ebp),%eax
    11f0:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    11f7:	8b 45 08             	mov    0x8(%ebp),%eax
    11fa:	01 d0                	add    %edx,%eax
    11fc:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    1203:	8b 45 fc             	mov    -0x4(%ebp),%eax
    1206:	83 c0 0d             	add    $0xd,%eax
    1209:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    1210:	8b 45 08             	mov    0x8(%ebp),%eax
    1213:	01 c2                	add    %eax,%edx
    1215:	8b 45 fc             	mov    -0x4(%ebp),%eax
    1218:	89 02                	mov    %eax,(%edx)
    121a:	8b 45 fc             	mov    -0x4(%ebp),%eax
    121d:	83 c0 0d             	add    $0xd,%eax
    1220:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    1227:	8b 45 08             	mov    0x8(%ebp),%eax
    122a:	01 d0                	add    %edx,%eax
    122c:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
    1233:	8b 45 fc             	mov    -0x4(%ebp),%eax
    1236:	83 c0 1a             	add    $0x1a,%eax
    1239:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    1240:	8b 45 08             	mov    0x8(%ebp),%eax
    1243:	01 c2                	add    %eax,%edx
    1245:	8b 45 fc             	mov    -0x4(%ebp),%eax
    1248:	89 02                	mov    %eax,(%edx)
    124a:	8b 45 fc             	mov    -0x4(%ebp),%eax
    124d:	83 c0 1a             	add    $0x1a,%eax
    1250:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    1257:	8b 45 08             	mov    0x8(%ebp),%eax
    125a:	01 d0                	add    %edx,%eax
    125c:	c7 40 04 02 00 00 00 	movl   $0x2,0x4(%eax)
    1263:	8b 45 fc             	mov    -0x4(%ebp),%eax
    1266:	83 c0 27             	add    $0x27,%eax
    1269:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    1270:	8b 45 08             	mov    0x8(%ebp),%eax
    1273:	01 c2                	add    %eax,%edx
    1275:	8b 45 fc             	mov    -0x4(%ebp),%eax
    1278:	89 02                	mov    %eax,(%edx)
    127a:	8b 45 fc             	mov    -0x4(%ebp),%eax
    127d:	83 c0 27             	add    $0x27,%eax
    1280:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    1287:	8b 45 08             	mov    0x8(%ebp),%eax
    128a:	01 d0                	add    %edx,%eax
    128c:	c7 40 04 03 00 00 00 	movl   $0x3,0x4(%eax)
    1293:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    1297:	83 7d fc 0c          	cmpl   $0xc,-0x4(%ebp)
    129b:	0f 8e 38 ff ff ff    	jle    11d9 <Init+0x1c>
    12a1:	90                   	nop
    12a2:	90                   	nop
    12a3:	c9                   	leave  
    12a4:	c3                   	ret    

000012a5 <Ordenar>:
    12a5:	55                   	push   %ebp
    12a6:	89 e5                	mov    %esp,%ebp
    12a8:	83 ec 10             	sub    $0x10,%esp
    12ab:	e8 d4 0c 00 00       	call   1f84 <__x86.get_pc_thunk.ax>
    12b0:	05 50 2d 00 00       	add    $0x2d50,%eax
    12b5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    12bc:	e9 e2 00 00 00       	jmp    13a3 <Ordenar+0xfe>
    12c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
    12c4:	83 c0 01             	add    $0x1,%eax
    12c7:	89 45 f8             	mov    %eax,-0x8(%ebp)
    12ca:	e9 c6 00 00 00       	jmp    1395 <Ordenar+0xf0>
    12cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
    12d2:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    12d9:	8b 45 08             	mov    0x8(%ebp),%eax
    12dc:	01 d0                	add    %edx,%eax
    12de:	8b 10                	mov    (%eax),%edx
    12e0:	8b 45 f8             	mov    -0x8(%ebp),%eax
    12e3:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
    12ea:	8b 45 08             	mov    0x8(%ebp),%eax
    12ed:	01 c8                	add    %ecx,%eax
    12ef:	8b 00                	mov    (%eax),%eax
    12f1:	39 c2                	cmp    %eax,%edx
    12f3:	0f 8e 98 00 00 00    	jle    1391 <Ordenar+0xec>
    12f9:	8b 45 f4             	mov    -0xc(%ebp),%eax
    12fc:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    1303:	8b 45 08             	mov    0x8(%ebp),%eax
    1306:	01 d0                	add    %edx,%eax
    1308:	8b 00                	mov    (%eax),%eax
    130a:	89 45 fc             	mov    %eax,-0x4(%ebp)
    130d:	8b 45 f8             	mov    -0x8(%ebp),%eax
    1310:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    1317:	8b 45 08             	mov    0x8(%ebp),%eax
    131a:	01 d0                	add    %edx,%eax
    131c:	8b 55 f4             	mov    -0xc(%ebp),%edx
    131f:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
    1326:	8b 55 08             	mov    0x8(%ebp),%edx
    1329:	01 ca                	add    %ecx,%edx
    132b:	8b 00                	mov    (%eax),%eax
    132d:	89 02                	mov    %eax,(%edx)
    132f:	8b 45 f8             	mov    -0x8(%ebp),%eax
    1332:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    1339:	8b 45 08             	mov    0x8(%ebp),%eax
    133c:	01 c2                	add    %eax,%edx
    133e:	8b 45 fc             	mov    -0x4(%ebp),%eax
    1341:	89 02                	mov    %eax,(%edx)
    1343:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1346:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    134d:	8b 45 08             	mov    0x8(%ebp),%eax
    1350:	01 d0                	add    %edx,%eax
    1352:	8b 40 04             	mov    0x4(%eax),%eax
    1355:	89 45 fc             	mov    %eax,-0x4(%ebp)
    1358:	8b 45 f8             	mov    -0x8(%ebp),%eax
    135b:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    1362:	8b 45 08             	mov    0x8(%ebp),%eax
    1365:	01 d0                	add    %edx,%eax
    1367:	8b 55 f4             	mov    -0xc(%ebp),%edx
    136a:	8d 0c d5 00 00 00 00 	lea    0x0(,%edx,8),%ecx
    1371:	8b 55 08             	mov    0x8(%ebp),%edx
    1374:	01 ca                	add    %ecx,%edx
    1376:	8b 40 04             	mov    0x4(%eax),%eax
    1379:	89 42 04             	mov    %eax,0x4(%edx)
    137c:	8b 45 f8             	mov    -0x8(%ebp),%eax
    137f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    1386:	8b 45 08             	mov    0x8(%ebp),%eax
    1389:	01 c2                	add    %eax,%edx
    138b:	8b 45 fc             	mov    -0x4(%ebp),%eax
    138e:	89 42 04             	mov    %eax,0x4(%edx)
    1391:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    1395:	83 7d f8 04          	cmpl   $0x4,-0x8(%ebp)
    1399:	0f 8e 30 ff ff ff    	jle    12cf <Ordenar+0x2a>
    139f:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    13a3:	83 7d f4 04          	cmpl   $0x4,-0xc(%ebp)
    13a7:	0f 8e 14 ff ff ff    	jle    12c1 <Ordenar+0x1c>
    13ad:	90                   	nop
    13ae:	90                   	nop
    13af:	c9                   	leave  
    13b0:	c3                   	ret    

000013b1 <Mostrar>:
    13b1:	55                   	push   %ebp
    13b2:	89 e5                	mov    %esp,%ebp
    13b4:	53                   	push   %ebx
    13b5:	83 ec 14             	sub    $0x14,%esp
    13b8:	e8 03 fd ff ff       	call   10c0 <__x86.get_pc_thunk.bx>
    13bd:	81 c3 43 2c 00 00    	add    $0x2c43,%ebx
    13c3:	83 ec 0c             	sub    $0xc,%esp
    13c6:	6a 0a                	push   $0xa
    13c8:	e8 a3 fc ff ff       	call   1070 <putchar@plt>
    13cd:	83 c4 10             	add    $0x10,%esp
    13d0:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    13d7:	e9 ec 00 00 00       	jmp    14c8 <Mostrar+0x117>
    13dc:	8b 45 ec             	mov    -0x14(%ebp),%eax
    13df:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    13e6:	8b 45 08             	mov    0x8(%ebp),%eax
    13e9:	01 d0                	add    %edx,%eax
    13eb:	8b 00                	mov    (%eax),%eax
    13ed:	89 45 f0             	mov    %eax,-0x10(%ebp)
    13f0:	8b 45 ec             	mov    -0x14(%ebp),%eax
    13f3:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
    13fa:	8b 45 08             	mov    0x8(%ebp),%eax
    13fd:	01 d0                	add    %edx,%eax
    13ff:	8b 40 04             	mov    0x4(%eax),%eax
    1402:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1405:	8d 93 28 00 00 00    	lea    0x28(%ebx),%edx
    140b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    140e:	01 d0                	add    %edx,%eax
    1410:	0f b6 00             	movzbl (%eax),%eax
    1413:	3c 31                	cmp    $0x31,%al
    1415:	75 14                	jne    142b <Mostrar+0x7a>
    1417:	83 ec 0c             	sub    $0xc,%esp
    141a:	8d 83 08 e0 ff ff    	lea    -0x1ff8(%ebx),%eax
    1420:	50                   	push   %eax
    1421:	e8 2a fc ff ff       	call   1050 <printf@plt>
    1426:	83 c4 10             	add    $0x10,%esp
    1429:	eb 24                	jmp    144f <Mostrar+0x9e>
    142b:	8d 93 28 00 00 00    	lea    0x28(%ebx),%edx
    1431:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1434:	01 d0                	add    %edx,%eax
    1436:	0f b6 00             	movzbl (%eax),%eax
    1439:	0f be c0             	movsbl %al,%eax
    143c:	83 ec 08             	sub    $0x8,%esp
    143f:	50                   	push   %eax
    1440:	8d 83 0e e0 ff ff    	lea    -0x1ff2(%ebx),%eax
    1446:	50                   	push   %eax
    1447:	e8 04 fc ff ff       	call   1050 <printf@plt>
    144c:	83 c4 10             	add    $0x10,%esp
    144f:	83 7d f4 03          	cmpl   $0x3,-0xc(%ebp)
    1453:	74 48                	je     149d <Mostrar+0xec>
    1455:	83 7d f4 03          	cmpl   $0x3,-0xc(%ebp)
    1459:	7f 69                	jg     14c4 <Mostrar+0x113>
    145b:	83 7d f4 02          	cmpl   $0x2,-0xc(%ebp)
    145f:	74 50                	je     14b1 <Mostrar+0x100>
    1461:	83 7d f4 02          	cmpl   $0x2,-0xc(%ebp)
    1465:	7f 5d                	jg     14c4 <Mostrar+0x113>
    1467:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    146b:	74 08                	je     1475 <Mostrar+0xc4>
    146d:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
    1471:	74 16                	je     1489 <Mostrar+0xd8>
    1473:	eb 4f                	jmp    14c4 <Mostrar+0x113>
    1475:	83 ec 0c             	sub    $0xc,%esp
    1478:	8d 83 15 e0 ff ff    	lea    -0x1feb(%ebx),%eax
    147e:	50                   	push   %eax
    147f:	e8 dc fb ff ff       	call   1060 <puts@plt>
    1484:	83 c4 10             	add    $0x10,%esp
    1487:	eb 3b                	jmp    14c4 <Mostrar+0x113>
    1489:	83 ec 0c             	sub    $0xc,%esp
    148c:	8d 83 19 e0 ff ff    	lea    -0x1fe7(%ebx),%eax
    1492:	50                   	push   %eax
    1493:	e8 c8 fb ff ff       	call   1060 <puts@plt>
    1498:	83 c4 10             	add    $0x10,%esp
    149b:	eb 27                	jmp    14c4 <Mostrar+0x113>
    149d:	83 ec 0c             	sub    $0xc,%esp
    14a0:	8d 83 1d e0 ff ff    	lea    -0x1fe3(%ebx),%eax
    14a6:	50                   	push   %eax
    14a7:	e8 b4 fb ff ff       	call   1060 <puts@plt>
    14ac:	83 c4 10             	add    $0x10,%esp
    14af:	eb 13                	jmp    14c4 <Mostrar+0x113>
    14b1:	83 ec 0c             	sub    $0xc,%esp
    14b4:	8d 83 21 e0 ff ff    	lea    -0x1fdf(%ebx),%eax
    14ba:	50                   	push   %eax
    14bb:	e8 a0 fb ff ff       	call   1060 <puts@plt>
    14c0:	83 c4 10             	add    $0x10,%esp
    14c3:	90                   	nop
    14c4:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
    14c8:	83 7d ec 04          	cmpl   $0x4,-0x14(%ebp)
    14cc:	0f 8e 0a ff ff ff    	jle    13dc <Mostrar+0x2b>
    14d2:	83 ec 0c             	sub    $0xc,%esp
    14d5:	6a 0a                	push   $0xa
    14d7:	e8 94 fb ff ff       	call   1070 <putchar@plt>
    14dc:	83 c4 10             	add    $0x10,%esp
    14df:	90                   	nop
    14e0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    14e3:	c9                   	leave  
    14e4:	c3                   	ret    

000014e5 <verbose>:
    14e5:	55                   	push   %ebp
    14e6:	89 e5                	mov    %esp,%ebp
    14e8:	53                   	push   %ebx
    14e9:	83 ec 04             	sub    $0x4,%esp
    14ec:	e8 93 0a 00 00       	call   1f84 <__x86.get_pc_thunk.ax>
    14f1:	05 0f 2b 00 00       	add    $0x2b0f,%eax
    14f6:	8b 90 24 02 00 00    	mov    0x224(%eax),%edx
    14fc:	85 d2                	test   %edx,%edx
    14fe:	74 17                	je     1517 <verbose+0x32>
    1500:	83 ec 08             	sub    $0x8,%esp
    1503:	ff 75 08             	push   0x8(%ebp)
    1506:	8d 90 25 e0 ff ff    	lea    -0x1fdb(%eax),%edx
    150c:	52                   	push   %edx
    150d:	89 c3                	mov    %eax,%ebx
    150f:	e8 3c fb ff ff       	call   1050 <printf@plt>
    1514:	83 c4 10             	add    $0x10,%esp
    1517:	90                   	nop
    1518:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    151b:	c9                   	leave  
    151c:	c3                   	ret    

0000151d <Color>:
    151d:	55                   	push   %ebp
    151e:	89 e5                	mov    %esp,%ebp
    1520:	e8 5f 0a 00 00       	call   1f84 <__x86.get_pc_thunk.ax>
    1525:	05 db 2a 00 00       	add    $0x2adb,%eax
    152a:	8b 45 08             	mov    0x8(%ebp),%eax
    152d:	8b 50 04             	mov    0x4(%eax),%edx
    1530:	8b 45 08             	mov    0x8(%ebp),%eax
    1533:	83 c0 08             	add    $0x8,%eax
    1536:	8b 40 04             	mov    0x4(%eax),%eax
    1539:	39 c2                	cmp    %eax,%edx
    153b:	75 40                	jne    157d <Color+0x60>
    153d:	8b 45 08             	mov    0x8(%ebp),%eax
    1540:	8b 50 04             	mov    0x4(%eax),%edx
    1543:	8b 45 08             	mov    0x8(%ebp),%eax
    1546:	83 c0 10             	add    $0x10,%eax
    1549:	8b 40 04             	mov    0x4(%eax),%eax
    154c:	39 c2                	cmp    %eax,%edx
    154e:	75 2d                	jne    157d <Color+0x60>
    1550:	8b 45 08             	mov    0x8(%ebp),%eax
    1553:	8b 50 04             	mov    0x4(%eax),%edx
    1556:	8b 45 08             	mov    0x8(%ebp),%eax
    1559:	83 c0 18             	add    $0x18,%eax
    155c:	8b 40 04             	mov    0x4(%eax),%eax
    155f:	39 c2                	cmp    %eax,%edx
    1561:	75 1a                	jne    157d <Color+0x60>
    1563:	8b 45 08             	mov    0x8(%ebp),%eax
    1566:	8b 50 04             	mov    0x4(%eax),%edx
    1569:	8b 45 08             	mov    0x8(%ebp),%eax
    156c:	83 c0 20             	add    $0x20,%eax
    156f:	8b 40 04             	mov    0x4(%eax),%eax
    1572:	39 c2                	cmp    %eax,%edx
    1574:	75 07                	jne    157d <Color+0x60>
    1576:	b8 01 00 00 00       	mov    $0x1,%eax
    157b:	eb 05                	jmp    1582 <Color+0x65>
    157d:	b8 00 00 00 00       	mov    $0x0,%eax
    1582:	5d                   	pop    %ebp
    1583:	c3                   	ret    

00001584 <Poker>:
    1584:	55                   	push   %ebp
    1585:	89 e5                	mov    %esp,%ebp
    1587:	83 ec 10             	sub    $0x10,%esp
    158a:	e8 f5 09 00 00       	call   1f84 <__x86.get_pc_thunk.ax>
    158f:	05 71 2a 00 00       	add    $0x2a71,%eax
    1594:	8b 45 08             	mov    0x8(%ebp),%eax
    1597:	8b 10                	mov    (%eax),%edx
    1599:	8b 45 08             	mov    0x8(%ebp),%eax
    159c:	83 c0 08             	add    $0x8,%eax
    159f:	8b 00                	mov    (%eax),%eax
    15a1:	39 c2                	cmp    %eax,%edx
    15a3:	75 29                	jne    15ce <Poker+0x4a>
    15a5:	8b 45 08             	mov    0x8(%ebp),%eax
    15a8:	8b 10                	mov    (%eax),%edx
    15aa:	8b 45 08             	mov    0x8(%ebp),%eax
    15ad:	83 c0 10             	add    $0x10,%eax
    15b0:	8b 00                	mov    (%eax),%eax
    15b2:	39 c2                	cmp    %eax,%edx
    15b4:	75 18                	jne    15ce <Poker+0x4a>
    15b6:	8b 45 08             	mov    0x8(%ebp),%eax
    15b9:	8b 10                	mov    (%eax),%edx
    15bb:	8b 45 08             	mov    0x8(%ebp),%eax
    15be:	83 c0 18             	add    $0x18,%eax
    15c1:	8b 00                	mov    (%eax),%eax
    15c3:	39 c2                	cmp    %eax,%edx
    15c5:	75 07                	jne    15ce <Poker+0x4a>
    15c7:	b8 01 00 00 00       	mov    $0x1,%eax
    15cc:	eb 05                	jmp    15d3 <Poker+0x4f>
    15ce:	b8 00 00 00 00       	mov    $0x0,%eax
    15d3:	89 45 f8             	mov    %eax,-0x8(%ebp)
    15d6:	8b 45 08             	mov    0x8(%ebp),%eax
    15d9:	83 c0 08             	add    $0x8,%eax
    15dc:	8b 10                	mov    (%eax),%edx
    15de:	8b 45 08             	mov    0x8(%ebp),%eax
    15e1:	83 c0 10             	add    $0x10,%eax
    15e4:	8b 00                	mov    (%eax),%eax
    15e6:	39 c2                	cmp    %eax,%edx
    15e8:	75 2f                	jne    1619 <Poker+0x95>
    15ea:	8b 45 08             	mov    0x8(%ebp),%eax
    15ed:	83 c0 08             	add    $0x8,%eax
    15f0:	8b 10                	mov    (%eax),%edx
    15f2:	8b 45 08             	mov    0x8(%ebp),%eax
    15f5:	83 c0 18             	add    $0x18,%eax
    15f8:	8b 00                	mov    (%eax),%eax
    15fa:	39 c2                	cmp    %eax,%edx
    15fc:	75 1b                	jne    1619 <Poker+0x95>
    15fe:	8b 45 08             	mov    0x8(%ebp),%eax
    1601:	83 c0 08             	add    $0x8,%eax
    1604:	8b 10                	mov    (%eax),%edx
    1606:	8b 45 08             	mov    0x8(%ebp),%eax
    1609:	83 c0 20             	add    $0x20,%eax
    160c:	8b 00                	mov    (%eax),%eax
    160e:	39 c2                	cmp    %eax,%edx
    1610:	75 07                	jne    1619 <Poker+0x95>
    1612:	b8 01 00 00 00       	mov    $0x1,%eax
    1617:	eb 05                	jmp    161e <Poker+0x9a>
    1619:	b8 00 00 00 00       	mov    $0x0,%eax
    161e:	89 45 fc             	mov    %eax,-0x4(%ebp)
    1621:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
    1625:	75 06                	jne    162d <Poker+0xa9>
    1627:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
    162b:	74 07                	je     1634 <Poker+0xb0>
    162d:	b8 01 00 00 00       	mov    $0x1,%eax
    1632:	eb 05                	jmp    1639 <Poker+0xb5>
    1634:	b8 00 00 00 00       	mov    $0x0,%eax
    1639:	c9                   	leave  
    163a:	c3                   	ret    

0000163b <Full>:
    163b:	55                   	push   %ebp
    163c:	89 e5                	mov    %esp,%ebp
    163e:	83 ec 10             	sub    $0x10,%esp
    1641:	e8 3e 09 00 00       	call   1f84 <__x86.get_pc_thunk.ax>
    1646:	05 ba 29 00 00       	add    $0x29ba,%eax
    164b:	8b 45 08             	mov    0x8(%ebp),%eax
    164e:	8b 10                	mov    (%eax),%edx
    1650:	8b 45 08             	mov    0x8(%ebp),%eax
    1653:	83 c0 08             	add    $0x8,%eax
    1656:	8b 00                	mov    (%eax),%eax
    1658:	39 c2                	cmp    %eax,%edx
    165a:	75 2c                	jne    1688 <Full+0x4d>
    165c:	8b 45 08             	mov    0x8(%ebp),%eax
    165f:	8b 10                	mov    (%eax),%edx
    1661:	8b 45 08             	mov    0x8(%ebp),%eax
    1664:	83 c0 10             	add    $0x10,%eax
    1667:	8b 00                	mov    (%eax),%eax
    1669:	39 c2                	cmp    %eax,%edx
    166b:	75 1b                	jne    1688 <Full+0x4d>
    166d:	8b 45 08             	mov    0x8(%ebp),%eax
    1670:	83 c0 18             	add    $0x18,%eax
    1673:	8b 10                	mov    (%eax),%edx
    1675:	8b 45 08             	mov    0x8(%ebp),%eax
    1678:	83 c0 20             	add    $0x20,%eax
    167b:	8b 00                	mov    (%eax),%eax
    167d:	39 c2                	cmp    %eax,%edx
    167f:	75 07                	jne    1688 <Full+0x4d>
    1681:	b8 01 00 00 00       	mov    $0x1,%eax
    1686:	eb 05                	jmp    168d <Full+0x52>
    1688:	b8 00 00 00 00       	mov    $0x0,%eax
    168d:	89 45 f8             	mov    %eax,-0x8(%ebp)
    1690:	8b 45 08             	mov    0x8(%ebp),%eax
    1693:	8b 10                	mov    (%eax),%edx
    1695:	8b 45 08             	mov    0x8(%ebp),%eax
    1698:	83 c0 08             	add    $0x8,%eax
    169b:	8b 00                	mov    (%eax),%eax
    169d:	39 c2                	cmp    %eax,%edx
    169f:	75 2f                	jne    16d0 <Full+0x95>
    16a1:	8b 45 08             	mov    0x8(%ebp),%eax
    16a4:	83 c0 10             	add    $0x10,%eax
    16a7:	8b 10                	mov    (%eax),%edx
    16a9:	8b 45 08             	mov    0x8(%ebp),%eax
    16ac:	83 c0 18             	add    $0x18,%eax
    16af:	8b 00                	mov    (%eax),%eax
    16b1:	39 c2                	cmp    %eax,%edx
    16b3:	75 1b                	jne    16d0 <Full+0x95>
    16b5:	8b 45 08             	mov    0x8(%ebp),%eax
    16b8:	83 c0 10             	add    $0x10,%eax
    16bb:	8b 10                	mov    (%eax),%edx
    16bd:	8b 45 08             	mov    0x8(%ebp),%eax
    16c0:	83 c0 20             	add    $0x20,%eax
    16c3:	8b 00                	mov    (%eax),%eax
    16c5:	39 c2                	cmp    %eax,%edx
    16c7:	75 07                	jne    16d0 <Full+0x95>
    16c9:	b8 01 00 00 00       	mov    $0x1,%eax
    16ce:	eb 05                	jmp    16d5 <Full+0x9a>
    16d0:	b8 00 00 00 00       	mov    $0x0,%eax
    16d5:	89 45 fc             	mov    %eax,-0x4(%ebp)
    16d8:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
    16dc:	75 06                	jne    16e4 <Full+0xa9>
    16de:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
    16e2:	74 07                	je     16eb <Full+0xb0>
    16e4:	b8 01 00 00 00       	mov    $0x1,%eax
    16e9:	eb 05                	jmp    16f0 <Full+0xb5>
    16eb:	b8 00 00 00 00       	mov    $0x0,%eax
    16f0:	c9                   	leave  
    16f1:	c3                   	ret    

000016f2 <Escalera>:
    16f2:	55                   	push   %ebp
    16f3:	89 e5                	mov    %esp,%ebp
    16f5:	83 ec 10             	sub    $0x10,%esp
    16f8:	e8 87 08 00 00       	call   1f84 <__x86.get_pc_thunk.ax>
    16fd:	05 03 29 00 00       	add    $0x2903,%eax
    1702:	8b 45 08             	mov    0x8(%ebp),%eax
    1705:	8b 00                	mov    (%eax),%eax
    1707:	8b 55 08             	mov    0x8(%ebp),%edx
    170a:	83 c2 08             	add    $0x8,%edx
    170d:	8b 12                	mov    (%edx),%edx
    170f:	83 ea 01             	sub    $0x1,%edx
    1712:	39 d0                	cmp    %edx,%eax
    1714:	75 43                	jne    1759 <Escalera+0x67>
    1716:	8b 45 08             	mov    0x8(%ebp),%eax
    1719:	8b 00                	mov    (%eax),%eax
    171b:	8b 55 08             	mov    0x8(%ebp),%edx
    171e:	83 c2 10             	add    $0x10,%edx
    1721:	8b 12                	mov    (%edx),%edx
    1723:	83 ea 02             	sub    $0x2,%edx
    1726:	39 d0                	cmp    %edx,%eax
    1728:	75 2f                	jne    1759 <Escalera+0x67>
    172a:	8b 45 08             	mov    0x8(%ebp),%eax
    172d:	8b 00                	mov    (%eax),%eax
    172f:	8b 55 08             	mov    0x8(%ebp),%edx
    1732:	83 c2 18             	add    $0x18,%edx
    1735:	8b 12                	mov    (%edx),%edx
    1737:	83 ea 03             	sub    $0x3,%edx
    173a:	39 d0                	cmp    %edx,%eax
    173c:	75 1b                	jne    1759 <Escalera+0x67>
    173e:	8b 45 08             	mov    0x8(%ebp),%eax
    1741:	8b 00                	mov    (%eax),%eax
    1743:	8b 55 08             	mov    0x8(%ebp),%edx
    1746:	83 c2 20             	add    $0x20,%edx
    1749:	8b 12                	mov    (%edx),%edx
    174b:	83 ea 04             	sub    $0x4,%edx
    174e:	39 d0                	cmp    %edx,%eax
    1750:	75 07                	jne    1759 <Escalera+0x67>
    1752:	b8 01 00 00 00       	mov    $0x1,%eax
    1757:	eb 05                	jmp    175e <Escalera+0x6c>
    1759:	b8 00 00 00 00       	mov    $0x0,%eax
    175e:	89 45 f8             	mov    %eax,-0x8(%ebp)
    1761:	8b 45 08             	mov    0x8(%ebp),%eax
    1764:	8b 00                	mov    (%eax),%eax
    1766:	85 c0                	test   %eax,%eax
    1768:	75 3b                	jne    17a5 <Escalera+0xb3>
    176a:	8b 45 08             	mov    0x8(%ebp),%eax
    176d:	83 c0 08             	add    $0x8,%eax
    1770:	8b 00                	mov    (%eax),%eax
    1772:	83 f8 01             	cmp    $0x1,%eax
    1775:	75 2e                	jne    17a5 <Escalera+0xb3>
    1777:	8b 45 08             	mov    0x8(%ebp),%eax
    177a:	83 c0 10             	add    $0x10,%eax
    177d:	8b 00                	mov    (%eax),%eax
    177f:	83 f8 02             	cmp    $0x2,%eax
    1782:	75 21                	jne    17a5 <Escalera+0xb3>
    1784:	8b 45 08             	mov    0x8(%ebp),%eax
    1787:	83 c0 18             	add    $0x18,%eax
    178a:	8b 00                	mov    (%eax),%eax
    178c:	83 f8 03             	cmp    $0x3,%eax
    178f:	75 14                	jne    17a5 <Escalera+0xb3>
    1791:	8b 45 08             	mov    0x8(%ebp),%eax
    1794:	83 c0 20             	add    $0x20,%eax
    1797:	8b 00                	mov    (%eax),%eax
    1799:	83 f8 0c             	cmp    $0xc,%eax
    179c:	75 07                	jne    17a5 <Escalera+0xb3>
    179e:	b8 01 00 00 00       	mov    $0x1,%eax
    17a3:	eb 05                	jmp    17aa <Escalera+0xb8>
    17a5:	b8 00 00 00 00       	mov    $0x0,%eax
    17aa:	89 45 fc             	mov    %eax,-0x4(%ebp)
    17ad:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
    17b1:	75 06                	jne    17b9 <Escalera+0xc7>
    17b3:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
    17b7:	74 07                	je     17c0 <Escalera+0xce>
    17b9:	b8 01 00 00 00       	mov    $0x1,%eax
    17be:	eb 05                	jmp    17c5 <Escalera+0xd3>
    17c0:	b8 00 00 00 00       	mov    $0x0,%eax
    17c5:	c9                   	leave  
    17c6:	c3                   	ret    

000017c7 <Trio>:
    17c7:	55                   	push   %ebp
    17c8:	89 e5                	mov    %esp,%ebp
    17ca:	83 ec 10             	sub    $0x10,%esp
    17cd:	e8 b2 07 00 00       	call   1f84 <__x86.get_pc_thunk.ax>
    17d2:	05 2e 28 00 00       	add    $0x282e,%eax
    17d7:	8b 45 08             	mov    0x8(%ebp),%eax
    17da:	8b 10                	mov    (%eax),%edx
    17dc:	8b 45 08             	mov    0x8(%ebp),%eax
    17df:	83 c0 08             	add    $0x8,%eax
    17e2:	8b 00                	mov    (%eax),%eax
    17e4:	39 c2                	cmp    %eax,%edx
    17e6:	75 18                	jne    1800 <Trio+0x39>
    17e8:	8b 45 08             	mov    0x8(%ebp),%eax
    17eb:	8b 10                	mov    (%eax),%edx
    17ed:	8b 45 08             	mov    0x8(%ebp),%eax
    17f0:	83 c0 10             	add    $0x10,%eax
    17f3:	8b 00                	mov    (%eax),%eax
    17f5:	39 c2                	cmp    %eax,%edx
    17f7:	75 07                	jne    1800 <Trio+0x39>
    17f9:	b8 01 00 00 00       	mov    $0x1,%eax
    17fe:	eb 05                	jmp    1805 <Trio+0x3e>
    1800:	b8 00 00 00 00       	mov    $0x0,%eax
    1805:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1808:	8b 45 08             	mov    0x8(%ebp),%eax
    180b:	83 c0 08             	add    $0x8,%eax
    180e:	8b 10                	mov    (%eax),%edx
    1810:	8b 45 08             	mov    0x8(%ebp),%eax
    1813:	83 c0 10             	add    $0x10,%eax
    1816:	8b 00                	mov    (%eax),%eax
    1818:	39 c2                	cmp    %eax,%edx
    181a:	75 1b                	jne    1837 <Trio+0x70>
    181c:	8b 45 08             	mov    0x8(%ebp),%eax
    181f:	83 c0 08             	add    $0x8,%eax
    1822:	8b 10                	mov    (%eax),%edx
    1824:	8b 45 08             	mov    0x8(%ebp),%eax
    1827:	83 c0 18             	add    $0x18,%eax
    182a:	8b 00                	mov    (%eax),%eax
    182c:	39 c2                	cmp    %eax,%edx
    182e:	75 07                	jne    1837 <Trio+0x70>
    1830:	b8 01 00 00 00       	mov    $0x1,%eax
    1835:	eb 05                	jmp    183c <Trio+0x75>
    1837:	b8 00 00 00 00       	mov    $0x0,%eax
    183c:	89 45 f8             	mov    %eax,-0x8(%ebp)
    183f:	8b 45 08             	mov    0x8(%ebp),%eax
    1842:	83 c0 10             	add    $0x10,%eax
    1845:	8b 10                	mov    (%eax),%edx
    1847:	8b 45 08             	mov    0x8(%ebp),%eax
    184a:	83 c0 18             	add    $0x18,%eax
    184d:	8b 00                	mov    (%eax),%eax
    184f:	39 c2                	cmp    %eax,%edx
    1851:	75 1b                	jne    186e <Trio+0xa7>
    1853:	8b 45 08             	mov    0x8(%ebp),%eax
    1856:	83 c0 10             	add    $0x10,%eax
    1859:	8b 10                	mov    (%eax),%edx
    185b:	8b 45 08             	mov    0x8(%ebp),%eax
    185e:	83 c0 20             	add    $0x20,%eax
    1861:	8b 00                	mov    (%eax),%eax
    1863:	39 c2                	cmp    %eax,%edx
    1865:	75 07                	jne    186e <Trio+0xa7>
    1867:	b8 01 00 00 00       	mov    $0x1,%eax
    186c:	eb 05                	jmp    1873 <Trio+0xac>
    186e:	b8 00 00 00 00       	mov    $0x0,%eax
    1873:	89 45 fc             	mov    %eax,-0x4(%ebp)
    1876:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    187a:	75 0c                	jne    1888 <Trio+0xc1>
    187c:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
    1880:	75 06                	jne    1888 <Trio+0xc1>
    1882:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
    1886:	74 07                	je     188f <Trio+0xc8>
    1888:	b8 01 00 00 00       	mov    $0x1,%eax
    188d:	eb 05                	jmp    1894 <Trio+0xcd>
    188f:	b8 00 00 00 00       	mov    $0x0,%eax
    1894:	c9                   	leave  
    1895:	c3                   	ret    

00001896 <Pareja>:
    1896:	55                   	push   %ebp
    1897:	89 e5                	mov    %esp,%ebp
    1899:	83 ec 10             	sub    $0x10,%esp
    189c:	e8 e3 06 00 00       	call   1f84 <__x86.get_pc_thunk.ax>
    18a1:	05 5f 27 00 00       	add    $0x275f,%eax
    18a6:	8b 45 08             	mov    0x8(%ebp),%eax
    18a9:	8b 10                	mov    (%eax),%edx
    18ab:	8b 45 08             	mov    0x8(%ebp),%eax
    18ae:	83 c0 08             	add    $0x8,%eax
    18b1:	8b 00                	mov    (%eax),%eax
    18b3:	39 c2                	cmp    %eax,%edx
    18b5:	0f 94 c0             	sete   %al
    18b8:	0f b6 c0             	movzbl %al,%eax
    18bb:	89 45 f0             	mov    %eax,-0x10(%ebp)
    18be:	8b 45 08             	mov    0x8(%ebp),%eax
    18c1:	83 c0 08             	add    $0x8,%eax
    18c4:	8b 10                	mov    (%eax),%edx
    18c6:	8b 45 08             	mov    0x8(%ebp),%eax
    18c9:	83 c0 10             	add    $0x10,%eax
    18cc:	8b 00                	mov    (%eax),%eax
    18ce:	39 c2                	cmp    %eax,%edx
    18d0:	0f 94 c0             	sete   %al
    18d3:	0f b6 c0             	movzbl %al,%eax
    18d6:	89 45 f4             	mov    %eax,-0xc(%ebp)
    18d9:	8b 45 08             	mov    0x8(%ebp),%eax
    18dc:	83 c0 10             	add    $0x10,%eax
    18df:	8b 10                	mov    (%eax),%edx
    18e1:	8b 45 08             	mov    0x8(%ebp),%eax
    18e4:	83 c0 18             	add    $0x18,%eax
    18e7:	8b 00                	mov    (%eax),%eax
    18e9:	39 c2                	cmp    %eax,%edx
    18eb:	0f 94 c0             	sete   %al
    18ee:	0f b6 c0             	movzbl %al,%eax
    18f1:	89 45 f8             	mov    %eax,-0x8(%ebp)
    18f4:	8b 45 08             	mov    0x8(%ebp),%eax
    18f7:	83 c0 18             	add    $0x18,%eax
    18fa:	8b 10                	mov    (%eax),%edx
    18fc:	8b 45 08             	mov    0x8(%ebp),%eax
    18ff:	83 c0 20             	add    $0x20,%eax
    1902:	8b 00                	mov    (%eax),%eax
    1904:	39 c2                	cmp    %eax,%edx
    1906:	0f 94 c0             	sete   %al
    1909:	0f b6 c0             	movzbl %al,%eax
    190c:	89 45 fc             	mov    %eax,-0x4(%ebp)
    190f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    1913:	75 12                	jne    1927 <Pareja+0x91>
    1915:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    1919:	75 0c                	jne    1927 <Pareja+0x91>
    191b:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
    191f:	75 06                	jne    1927 <Pareja+0x91>
    1921:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
    1925:	74 07                	je     192e <Pareja+0x98>
    1927:	b8 01 00 00 00       	mov    $0x1,%eax
    192c:	eb 05                	jmp    1933 <Pareja+0x9d>
    192e:	b8 00 00 00 00       	mov    $0x0,%eax
    1933:	c9                   	leave  
    1934:	c3                   	ret    

00001935 <DoblePareja>:
    1935:	55                   	push   %ebp
    1936:	89 e5                	mov    %esp,%ebp
    1938:	83 ec 10             	sub    $0x10,%esp
    193b:	e8 44 06 00 00       	call   1f84 <__x86.get_pc_thunk.ax>
    1940:	05 c0 26 00 00       	add    $0x26c0,%eax
    1945:	8b 45 08             	mov    0x8(%ebp),%eax
    1948:	8b 10                	mov    (%eax),%edx
    194a:	8b 45 08             	mov    0x8(%ebp),%eax
    194d:	83 c0 08             	add    $0x8,%eax
    1950:	8b 00                	mov    (%eax),%eax
    1952:	39 c2                	cmp    %eax,%edx
    1954:	75 1b                	jne    1971 <DoblePareja+0x3c>
    1956:	8b 45 08             	mov    0x8(%ebp),%eax
    1959:	83 c0 10             	add    $0x10,%eax
    195c:	8b 10                	mov    (%eax),%edx
    195e:	8b 45 08             	mov    0x8(%ebp),%eax
    1961:	83 c0 18             	add    $0x18,%eax
    1964:	8b 00                	mov    (%eax),%eax
    1966:	39 c2                	cmp    %eax,%edx
    1968:	75 07                	jne    1971 <DoblePareja+0x3c>
    196a:	b8 01 00 00 00       	mov    $0x1,%eax
    196f:	eb 05                	jmp    1976 <DoblePareja+0x41>
    1971:	b8 00 00 00 00       	mov    $0x0,%eax
    1976:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1979:	8b 45 08             	mov    0x8(%ebp),%eax
    197c:	8b 10                	mov    (%eax),%edx
    197e:	8b 45 08             	mov    0x8(%ebp),%eax
    1981:	83 c0 08             	add    $0x8,%eax
    1984:	8b 00                	mov    (%eax),%eax
    1986:	39 c2                	cmp    %eax,%edx
    1988:	75 1b                	jne    19a5 <DoblePareja+0x70>
    198a:	8b 45 08             	mov    0x8(%ebp),%eax
    198d:	83 c0 18             	add    $0x18,%eax
    1990:	8b 10                	mov    (%eax),%edx
    1992:	8b 45 08             	mov    0x8(%ebp),%eax
    1995:	83 c0 20             	add    $0x20,%eax
    1998:	8b 00                	mov    (%eax),%eax
    199a:	39 c2                	cmp    %eax,%edx
    199c:	75 07                	jne    19a5 <DoblePareja+0x70>
    199e:	b8 01 00 00 00       	mov    $0x1,%eax
    19a3:	eb 05                	jmp    19aa <DoblePareja+0x75>
    19a5:	b8 00 00 00 00       	mov    $0x0,%eax
    19aa:	89 45 f8             	mov    %eax,-0x8(%ebp)
    19ad:	8b 45 08             	mov    0x8(%ebp),%eax
    19b0:	83 c0 08             	add    $0x8,%eax
    19b3:	8b 10                	mov    (%eax),%edx
    19b5:	8b 45 08             	mov    0x8(%ebp),%eax
    19b8:	83 c0 10             	add    $0x10,%eax
    19bb:	8b 00                	mov    (%eax),%eax
    19bd:	39 c2                	cmp    %eax,%edx
    19bf:	75 1b                	jne    19dc <DoblePareja+0xa7>
    19c1:	8b 45 08             	mov    0x8(%ebp),%eax
    19c4:	83 c0 18             	add    $0x18,%eax
    19c7:	8b 10                	mov    (%eax),%edx
    19c9:	8b 45 08             	mov    0x8(%ebp),%eax
    19cc:	83 c0 20             	add    $0x20,%eax
    19cf:	8b 00                	mov    (%eax),%eax
    19d1:	39 c2                	cmp    %eax,%edx
    19d3:	75 07                	jne    19dc <DoblePareja+0xa7>
    19d5:	b8 01 00 00 00       	mov    $0x1,%eax
    19da:	eb 05                	jmp    19e1 <DoblePareja+0xac>
    19dc:	b8 00 00 00 00       	mov    $0x0,%eax
    19e1:	89 45 fc             	mov    %eax,-0x4(%ebp)
    19e4:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    19e8:	75 0c                	jne    19f6 <DoblePareja+0xc1>
    19ea:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
    19ee:	75 06                	jne    19f6 <DoblePareja+0xc1>
    19f0:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
    19f4:	74 07                	je     19fd <DoblePareja+0xc8>
    19f6:	b8 01 00 00 00       	mov    $0x1,%eax
    19fb:	eb 05                	jmp    1a02 <DoblePareja+0xcd>
    19fd:	b8 00 00 00 00       	mov    $0x0,%eax
    1a02:	c9                   	leave  
    1a03:	c3                   	ret    

00001a04 <Test>:
    1a04:	55                   	push   %ebp
    1a05:	89 e5                	mov    %esp,%ebp
    1a07:	53                   	push   %ebx
    1a08:	83 ec 04             	sub    $0x4,%esp
    1a0b:	e8 b0 f6 ff ff       	call   10c0 <__x86.get_pc_thunk.bx>
    1a10:	81 c3 f0 25 00 00    	add    $0x25f0,%ebx
    1a16:	ff 75 08             	push   0x8(%ebp)
    1a19:	e8 ff fa ff ff       	call   151d <Color>
    1a1e:	83 c4 04             	add    $0x4,%esp
    1a21:	85 c0                	test   %eax,%eax
    1a23:	74 35                	je     1a5a <Test+0x56>
    1a25:	ff 75 08             	push   0x8(%ebp)
    1a28:	e8 c5 fc ff ff       	call   16f2 <Escalera>
    1a2d:	83 c4 04             	add    $0x4,%esp
    1a30:	85 c0                	test   %eax,%eax
    1a32:	74 26                	je     1a5a <Test+0x56>
    1a34:	8b 83 20 02 00 00    	mov    0x220(%ebx),%eax
    1a3a:	83 c0 01             	add    $0x1,%eax
    1a3d:	89 83 20 02 00 00    	mov    %eax,0x220(%ebx)
    1a43:	83 ec 0c             	sub    $0xc,%esp
    1a46:	8d 83 28 e0 ff ff    	lea    -0x1fd8(%ebx),%eax
    1a4c:	50                   	push   %eax
    1a4d:	e8 93 fa ff ff       	call   14e5 <verbose>
    1a52:	83 c4 10             	add    $0x10,%esp
    1a55:	e9 a3 01 00 00       	jmp    1bfd <Test+0x1f9>
    1a5a:	83 ec 0c             	sub    $0xc,%esp
    1a5d:	ff 75 08             	push   0x8(%ebp)
    1a60:	e8 1f fb ff ff       	call   1584 <Poker>
    1a65:	83 c4 10             	add    $0x10,%esp
    1a68:	85 c0                	test   %eax,%eax
    1a6a:	74 26                	je     1a92 <Test+0x8e>
    1a6c:	8b 83 08 02 00 00    	mov    0x208(%ebx),%eax
    1a72:	83 c0 01             	add    $0x1,%eax
    1a75:	89 83 08 02 00 00    	mov    %eax,0x208(%ebx)
    1a7b:	83 ec 0c             	sub    $0xc,%esp
    1a7e:	8d 83 2c e0 ff ff    	lea    -0x1fd4(%ebx),%eax
    1a84:	50                   	push   %eax
    1a85:	e8 5b fa ff ff       	call   14e5 <verbose>
    1a8a:	83 c4 10             	add    $0x10,%esp
    1a8d:	e9 6b 01 00 00       	jmp    1bfd <Test+0x1f9>
    1a92:	83 ec 0c             	sub    $0xc,%esp
    1a95:	ff 75 08             	push   0x8(%ebp)
    1a98:	e8 9e fb ff ff       	call   163b <Full>
    1a9d:	83 c4 10             	add    $0x10,%esp
    1aa0:	85 c0                	test   %eax,%eax
    1aa2:	74 26                	je     1aca <Test+0xc6>
    1aa4:	8b 83 0c 02 00 00    	mov    0x20c(%ebx),%eax
    1aaa:	83 c0 01             	add    $0x1,%eax
    1aad:	89 83 0c 02 00 00    	mov    %eax,0x20c(%ebx)
    1ab3:	83 ec 0c             	sub    $0xc,%esp
    1ab6:	8d 83 30 e0 ff ff    	lea    -0x1fd0(%ebx),%eax
    1abc:	50                   	push   %eax
    1abd:	e8 23 fa ff ff       	call   14e5 <verbose>
    1ac2:	83 c4 10             	add    $0x10,%esp
    1ac5:	e9 33 01 00 00       	jmp    1bfd <Test+0x1f9>
    1aca:	83 ec 0c             	sub    $0xc,%esp
    1acd:	ff 75 08             	push   0x8(%ebp)
    1ad0:	e8 48 fa ff ff       	call   151d <Color>
    1ad5:	83 c4 10             	add    $0x10,%esp
    1ad8:	85 c0                	test   %eax,%eax
    1ada:	74 26                	je     1b02 <Test+0xfe>
    1adc:	8b 83 10 02 00 00    	mov    0x210(%ebx),%eax
    1ae2:	83 c0 01             	add    $0x1,%eax
    1ae5:	89 83 10 02 00 00    	mov    %eax,0x210(%ebx)
    1aeb:	83 ec 0c             	sub    $0xc,%esp
    1aee:	8d 83 34 e0 ff ff    	lea    -0x1fcc(%ebx),%eax
    1af4:	50                   	push   %eax
    1af5:	e8 eb f9 ff ff       	call   14e5 <verbose>
    1afa:	83 c4 10             	add    $0x10,%esp
    1afd:	e9 fb 00 00 00       	jmp    1bfd <Test+0x1f9>
    1b02:	83 ec 0c             	sub    $0xc,%esp
    1b05:	ff 75 08             	push   0x8(%ebp)
    1b08:	e8 e5 fb ff ff       	call   16f2 <Escalera>
    1b0d:	83 c4 10             	add    $0x10,%esp
    1b10:	85 c0                	test   %eax,%eax
    1b12:	74 26                	je     1b3a <Test+0x136>
    1b14:	8b 83 1c 02 00 00    	mov    0x21c(%ebx),%eax
    1b1a:	83 c0 01             	add    $0x1,%eax
    1b1d:	89 83 1c 02 00 00    	mov    %eax,0x21c(%ebx)
    1b23:	83 ec 0c             	sub    $0xc,%esp
    1b26:	8d 83 38 e0 ff ff    	lea    -0x1fc8(%ebx),%eax
    1b2c:	50                   	push   %eax
    1b2d:	e8 b3 f9 ff ff       	call   14e5 <verbose>
    1b32:	83 c4 10             	add    $0x10,%esp
    1b35:	e9 c3 00 00 00       	jmp    1bfd <Test+0x1f9>
    1b3a:	83 ec 0c             	sub    $0xc,%esp
    1b3d:	ff 75 08             	push   0x8(%ebp)
    1b40:	e8 82 fc ff ff       	call   17c7 <Trio>
    1b45:	83 c4 10             	add    $0x10,%esp
    1b48:	85 c0                	test   %eax,%eax
    1b4a:	74 26                	je     1b72 <Test+0x16e>
    1b4c:	8b 83 04 02 00 00    	mov    0x204(%ebx),%eax
    1b52:	83 c0 01             	add    $0x1,%eax
    1b55:	89 83 04 02 00 00    	mov    %eax,0x204(%ebx)
    1b5b:	83 ec 0c             	sub    $0xc,%esp
    1b5e:	8d 83 3c e0 ff ff    	lea    -0x1fc4(%ebx),%eax
    1b64:	50                   	push   %eax
    1b65:	e8 7b f9 ff ff       	call   14e5 <verbose>
    1b6a:	83 c4 10             	add    $0x10,%esp
    1b6d:	e9 8b 00 00 00       	jmp    1bfd <Test+0x1f9>
    1b72:	83 ec 0c             	sub    $0xc,%esp
    1b75:	ff 75 08             	push   0x8(%ebp)
    1b78:	e8 b8 fd ff ff       	call   1935 <DoblePareja>
    1b7d:	83 c4 10             	add    $0x10,%esp
    1b80:	85 c0                	test   %eax,%eax
    1b82:	74 23                	je     1ba7 <Test+0x1a3>
    1b84:	8b 83 18 02 00 00    	mov    0x218(%ebx),%eax
    1b8a:	83 c0 01             	add    $0x1,%eax
    1b8d:	89 83 18 02 00 00    	mov    %eax,0x218(%ebx)
    1b93:	83 ec 0c             	sub    $0xc,%esp
    1b96:	8d 83 40 e0 ff ff    	lea    -0x1fc0(%ebx),%eax
    1b9c:	50                   	push   %eax
    1b9d:	e8 43 f9 ff ff       	call   14e5 <verbose>
    1ba2:	83 c4 10             	add    $0x10,%esp
    1ba5:	eb 56                	jmp    1bfd <Test+0x1f9>
    1ba7:	83 ec 0c             	sub    $0xc,%esp
    1baa:	ff 75 08             	push   0x8(%ebp)
    1bad:	e8 e4 fc ff ff       	call   1896 <Pareja>
    1bb2:	83 c4 10             	add    $0x10,%esp
    1bb5:	85 c0                	test   %eax,%eax
    1bb7:	74 23                	je     1bdc <Test+0x1d8>
    1bb9:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
    1bbf:	83 c0 01             	add    $0x1,%eax
    1bc2:	89 83 00 02 00 00    	mov    %eax,0x200(%ebx)
    1bc8:	83 ec 0c             	sub    $0xc,%esp
    1bcb:	8d 83 44 e0 ff ff    	lea    -0x1fbc(%ebx),%eax
    1bd1:	50                   	push   %eax
    1bd2:	e8 0e f9 ff ff       	call   14e5 <verbose>
    1bd7:	83 c4 10             	add    $0x10,%esp
    1bda:	eb 21                	jmp    1bfd <Test+0x1f9>
    1bdc:	8b 83 14 02 00 00    	mov    0x214(%ebx),%eax
    1be2:	83 c0 01             	add    $0x1,%eax
    1be5:	89 83 14 02 00 00    	mov    %eax,0x214(%ebx)
    1beb:	83 ec 0c             	sub    $0xc,%esp
    1bee:	8d 83 48 e0 ff ff    	lea    -0x1fb8(%ebx),%eax
    1bf4:	50                   	push   %eax
    1bf5:	e8 eb f8 ff ff       	call   14e5 <verbose>
    1bfa:	83 c4 10             	add    $0x10,%esp
    1bfd:	90                   	nop
    1bfe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1c01:	c9                   	leave  
    1c02:	c3                   	ret    

00001c03 <Repartir>:
    1c03:	55                   	push   %ebp
    1c04:	89 e5                	mov    %esp,%ebp
    1c06:	e8 79 03 00 00       	call   1f84 <__x86.get_pc_thunk.ax>
    1c0b:	05 f5 23 00 00       	add    $0x23f5,%eax
    1c10:	8b 55 0c             	mov    0xc(%ebp),%edx
    1c13:	8b 8c d0 60 00 00 00 	mov    0x60(%eax,%edx,8),%ecx
    1c1a:	8b 55 08             	mov    0x8(%ebp),%edx
    1c1d:	89 0a                	mov    %ecx,(%edx)
    1c1f:	8b 55 08             	mov    0x8(%ebp),%edx
    1c22:	8d 4a 08             	lea    0x8(%edx),%ecx
    1c25:	8b 55 10             	mov    0x10(%ebp),%edx
    1c28:	8b 94 d0 60 00 00 00 	mov    0x60(%eax,%edx,8),%edx
    1c2f:	89 11                	mov    %edx,(%ecx)
    1c31:	8b 55 08             	mov    0x8(%ebp),%edx
    1c34:	8d 4a 10             	lea    0x10(%edx),%ecx
    1c37:	8b 55 14             	mov    0x14(%ebp),%edx
    1c3a:	8b 94 d0 60 00 00 00 	mov    0x60(%eax,%edx,8),%edx
    1c41:	89 11                	mov    %edx,(%ecx)
    1c43:	8b 55 08             	mov    0x8(%ebp),%edx
    1c46:	8d 4a 18             	lea    0x18(%edx),%ecx
    1c49:	8b 55 18             	mov    0x18(%ebp),%edx
    1c4c:	8b 94 d0 60 00 00 00 	mov    0x60(%eax,%edx,8),%edx
    1c53:	89 11                	mov    %edx,(%ecx)
    1c55:	8b 55 08             	mov    0x8(%ebp),%edx
    1c58:	8d 4a 20             	lea    0x20(%edx),%ecx
    1c5b:	8b 55 1c             	mov    0x1c(%ebp),%edx
    1c5e:	8b 94 d0 60 00 00 00 	mov    0x60(%eax,%edx,8),%edx
    1c65:	89 11                	mov    %edx,(%ecx)
    1c67:	8b 55 0c             	mov    0xc(%ebp),%edx
    1c6a:	8b 8c d0 64 00 00 00 	mov    0x64(%eax,%edx,8),%ecx
    1c71:	8b 55 08             	mov    0x8(%ebp),%edx
    1c74:	89 4a 04             	mov    %ecx,0x4(%edx)
    1c77:	8b 55 08             	mov    0x8(%ebp),%edx
    1c7a:	8d 4a 08             	lea    0x8(%edx),%ecx
    1c7d:	8b 55 10             	mov    0x10(%ebp),%edx
    1c80:	8b 94 d0 64 00 00 00 	mov    0x64(%eax,%edx,8),%edx
    1c87:	89 51 04             	mov    %edx,0x4(%ecx)
    1c8a:	8b 55 08             	mov    0x8(%ebp),%edx
    1c8d:	8d 4a 10             	lea    0x10(%edx),%ecx
    1c90:	8b 55 14             	mov    0x14(%ebp),%edx
    1c93:	8b 94 d0 64 00 00 00 	mov    0x64(%eax,%edx,8),%edx
    1c9a:	89 51 04             	mov    %edx,0x4(%ecx)
    1c9d:	8b 55 08             	mov    0x8(%ebp),%edx
    1ca0:	8d 4a 18             	lea    0x18(%edx),%ecx
    1ca3:	8b 55 18             	mov    0x18(%ebp),%edx
    1ca6:	8b 94 d0 64 00 00 00 	mov    0x64(%eax,%edx,8),%edx
    1cad:	89 51 04             	mov    %edx,0x4(%ecx)
    1cb0:	8b 55 08             	mov    0x8(%ebp),%edx
    1cb3:	8d 4a 20             	lea    0x20(%edx),%ecx
    1cb6:	8b 55 1c             	mov    0x1c(%ebp),%edx
    1cb9:	8b 84 d0 64 00 00 00 	mov    0x64(%eax,%edx,8),%eax
    1cc0:	89 41 04             	mov    %eax,0x4(%ecx)
    1cc3:	90                   	nop
    1cc4:	5d                   	pop    %ebp
    1cc5:	c3                   	ret    

00001cc6 <main>:
    1cc6:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1cca:	83 e4 f0             	and    $0xfffffff0,%esp
    1ccd:	ff 71 fc             	push   -0x4(%ecx)
    1cd0:	55                   	push   %ebp
    1cd1:	89 e5                	mov    %esp,%ebp
    1cd3:	57                   	push   %edi
    1cd4:	56                   	push   %esi
    1cd5:	53                   	push   %ebx
    1cd6:	51                   	push   %ecx
    1cd7:	83 ec 28             	sub    $0x28,%esp
    1cda:	e8 e1 f3 ff ff       	call   10c0 <__x86.get_pc_thunk.bx>
    1cdf:	81 c3 21 23 00 00    	add    $0x2321,%ebx
    1ce5:	89 c8                	mov    %ecx,%eax
    1ce7:	c7 83 7c 02 00 00 00 	movl   $0x0,0x27c(%ebx)
    1cee:	00 00 00 
    1cf1:	83 38 02             	cmpl   $0x2,(%eax)
    1cf4:	75 1c                	jne    1d12 <main+0x4c>
    1cf6:	8b 40 04             	mov    0x4(%eax),%eax
    1cf9:	83 c0 04             	add    $0x4,%eax
    1cfc:	8b 00                	mov    (%eax),%eax
    1cfe:	83 ec 0c             	sub    $0xc,%esp
    1d01:	50                   	push   %eax
    1d02:	e8 79 f3 ff ff       	call   1080 <atoi@plt>
    1d07:	83 c4 10             	add    $0x10,%esp
    1d0a:	89 83 24 02 00 00    	mov    %eax,0x224(%ebx)
    1d10:	eb 0a                	jmp    1d1c <main+0x56>
    1d12:	c7 83 24 02 00 00 00 	movl   $0x0,0x224(%ebx)
    1d19:	00 00 00 
    1d1c:	83 ec 0c             	sub    $0xc,%esp
    1d1f:	8d 83 60 00 00 00    	lea    0x60(%ebx),%eax
    1d25:	50                   	push   %eax
    1d26:	e8 92 f4 ff ff       	call   11bd <Init>
    1d2b:	83 c4 10             	add    $0x10,%esp
    1d2e:	c7 83 68 02 00 00 00 	movl   $0x0,0x268(%ebx)
    1d35:	00 00 00 
    1d38:	e9 86 01 00 00       	jmp    1ec3 <main+0x1fd>
    1d3d:	8b 83 68 02 00 00    	mov    0x268(%ebx),%eax
    1d43:	83 c0 01             	add    $0x1,%eax
    1d46:	89 83 6c 02 00 00    	mov    %eax,0x26c(%ebx)
    1d4c:	e9 54 01 00 00       	jmp    1ea5 <main+0x1df>
    1d51:	8b 83 6c 02 00 00    	mov    0x26c(%ebx),%eax
    1d57:	83 c0 01             	add    $0x1,%eax
    1d5a:	89 83 70 02 00 00    	mov    %eax,0x270(%ebx)
    1d60:	e9 22 01 00 00       	jmp    1e87 <main+0x1c1>
    1d65:	8b 83 70 02 00 00    	mov    0x270(%ebx),%eax
    1d6b:	83 c0 01             	add    $0x1,%eax
    1d6e:	89 83 74 02 00 00    	mov    %eax,0x274(%ebx)
    1d74:	e9 f0 00 00 00       	jmp    1e69 <main+0x1a3>
    1d79:	8b 83 74 02 00 00    	mov    0x274(%ebx),%eax
    1d7f:	83 c0 01             	add    $0x1,%eax
    1d82:	89 83 78 02 00 00    	mov    %eax,0x278(%ebx)
    1d88:	e9 be 00 00 00       	jmp    1e4b <main+0x185>
    1d8d:	8b 8b 7c 02 00 00    	mov    0x27c(%ebx),%ecx
    1d93:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
    1d98:	89 c8                	mov    %ecx,%eax
    1d9a:	f7 ea                	imul   %edx
    1d9c:	89 d0                	mov    %edx,%eax
    1d9e:	c1 f8 03             	sar    $0x3,%eax
    1da1:	89 ce                	mov    %ecx,%esi
    1da3:	c1 fe 1f             	sar    $0x1f,%esi
    1da6:	29 f0                	sub    %esi,%eax
    1da8:	89 c2                	mov    %eax,%edx
    1daa:	89 d0                	mov    %edx,%eax
    1dac:	c1 e0 02             	shl    $0x2,%eax
    1daf:	01 d0                	add    %edx,%eax
    1db1:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
    1db8:	01 d0                	add    %edx,%eax
    1dba:	29 c1                	sub    %eax,%ecx
    1dbc:	89 ca                	mov    %ecx,%edx
    1dbe:	85 d2                	test   %edx,%edx
    1dc0:	75 12                	jne    1dd4 <main+0x10e>
    1dc2:	83 ec 0c             	sub    $0xc,%esp
    1dc5:	8d 83 4c e0 ff ff    	lea    -0x1fb4(%ebx),%eax
    1dcb:	50                   	push   %eax
    1dcc:	e8 14 f7 ff ff       	call   14e5 <verbose>
    1dd1:	83 c4 10             	add    $0x10,%esp
    1dd4:	8b bb 78 02 00 00    	mov    0x278(%ebx),%edi
    1dda:	8b b3 74 02 00 00    	mov    0x274(%ebx),%esi
    1de0:	8b 8b 70 02 00 00    	mov    0x270(%ebx),%ecx
    1de6:	8b 93 6c 02 00 00    	mov    0x26c(%ebx),%edx
    1dec:	8b 83 68 02 00 00    	mov    0x268(%ebx),%eax
    1df2:	83 ec 08             	sub    $0x8,%esp
    1df5:	57                   	push   %edi
    1df6:	56                   	push   %esi
    1df7:	51                   	push   %ecx
    1df8:	52                   	push   %edx
    1df9:	50                   	push   %eax
    1dfa:	8d 83 40 02 00 00    	lea    0x240(%ebx),%eax
    1e00:	50                   	push   %eax
    1e01:	e8 fd fd ff ff       	call   1c03 <Repartir>
    1e06:	83 c4 20             	add    $0x20,%esp
    1e09:	83 ec 0c             	sub    $0xc,%esp
    1e0c:	8d 83 40 02 00 00    	lea    0x240(%ebx),%eax
    1e12:	50                   	push   %eax
    1e13:	e8 8d f4 ff ff       	call   12a5 <Ordenar>
    1e18:	83 c4 10             	add    $0x10,%esp
    1e1b:	83 ec 0c             	sub    $0xc,%esp
    1e1e:	8d 83 40 02 00 00    	lea    0x240(%ebx),%eax
    1e24:	50                   	push   %eax
    1e25:	e8 da fb ff ff       	call   1a04 <Test>
    1e2a:	83 c4 10             	add    $0x10,%esp
    1e2d:	8b 83 7c 02 00 00    	mov    0x27c(%ebx),%eax
    1e33:	83 c0 01             	add    $0x1,%eax
    1e36:	89 83 7c 02 00 00    	mov    %eax,0x27c(%ebx)
    1e3c:	8b 83 78 02 00 00    	mov    0x278(%ebx),%eax
    1e42:	83 c0 01             	add    $0x1,%eax
    1e45:	89 83 78 02 00 00    	mov    %eax,0x278(%ebx)
    1e4b:	8b 83 78 02 00 00    	mov    0x278(%ebx),%eax
    1e51:	83 f8 33             	cmp    $0x33,%eax
    1e54:	0f 8e 33 ff ff ff    	jle    1d8d <main+0xc7>
    1e5a:	8b 83 74 02 00 00    	mov    0x274(%ebx),%eax
    1e60:	83 c0 01             	add    $0x1,%eax
    1e63:	89 83 74 02 00 00    	mov    %eax,0x274(%ebx)
    1e69:	8b 83 74 02 00 00    	mov    0x274(%ebx),%eax
    1e6f:	83 f8 32             	cmp    $0x32,%eax
    1e72:	0f 8e 01 ff ff ff    	jle    1d79 <main+0xb3>
    1e78:	8b 83 70 02 00 00    	mov    0x270(%ebx),%eax
    1e7e:	83 c0 01             	add    $0x1,%eax
    1e81:	89 83 70 02 00 00    	mov    %eax,0x270(%ebx)
    1e87:	8b 83 70 02 00 00    	mov    0x270(%ebx),%eax
    1e8d:	83 f8 31             	cmp    $0x31,%eax
    1e90:	0f 8e cf fe ff ff    	jle    1d65 <main+0x9f>
    1e96:	8b 83 6c 02 00 00    	mov    0x26c(%ebx),%eax
    1e9c:	83 c0 01             	add    $0x1,%eax
    1e9f:	89 83 6c 02 00 00    	mov    %eax,0x26c(%ebx)
    1ea5:	8b 83 6c 02 00 00    	mov    0x26c(%ebx),%eax
    1eab:	83 f8 30             	cmp    $0x30,%eax
    1eae:	0f 8e 9d fe ff ff    	jle    1d51 <main+0x8b>
    1eb4:	8b 83 68 02 00 00    	mov    0x268(%ebx),%eax
    1eba:	83 c0 01             	add    $0x1,%eax
    1ebd:	89 83 68 02 00 00    	mov    %eax,0x268(%ebx)
    1ec3:	8b 83 68 02 00 00    	mov    0x268(%ebx),%eax
    1ec9:	83 f8 2f             	cmp    $0x2f,%eax
    1ecc:	0f 8e 6b fe ff ff    	jle    1d3d <main+0x77>
    1ed2:	83 ec 0c             	sub    $0xc,%esp
    1ed5:	6a 0a                	push   $0xa
    1ed7:	e8 94 f1 ff ff       	call   1070 <putchar@plt>
    1edc:	83 c4 10             	add    $0x10,%esp
    1edf:	8b 93 14 02 00 00    	mov    0x214(%ebx),%edx
    1ee5:	8b b3 00 02 00 00    	mov    0x200(%ebx),%esi
    1eeb:	8b 83 18 02 00 00    	mov    0x218(%ebx),%eax
    1ef1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    1ef4:	8b bb 04 02 00 00    	mov    0x204(%ebx),%edi
    1efa:	89 7d e0             	mov    %edi,-0x20(%ebp)
    1efd:	8b 8b 1c 02 00 00    	mov    0x21c(%ebx),%ecx
    1f03:	89 4d dc             	mov    %ecx,-0x24(%ebp)
    1f06:	8b 83 10 02 00 00    	mov    0x210(%ebx),%eax
    1f0c:	89 45 d8             	mov    %eax,-0x28(%ebp)
    1f0f:	8b bb 0c 02 00 00    	mov    0x20c(%ebx),%edi
    1f15:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    1f18:	8b bb 08 02 00 00    	mov    0x208(%ebx),%edi
    1f1e:	8b 8b 20 02 00 00    	mov    0x220(%ebx),%ecx
    1f24:	8b 83 7c 02 00 00    	mov    0x27c(%ebx),%eax
    1f2a:	83 ec 04             	sub    $0x4,%esp
    1f2d:	52                   	push   %edx
    1f2e:	56                   	push   %esi
    1f2f:	ff 75 e4             	push   -0x1c(%ebp)
    1f32:	ff 75 e0             	push   -0x20(%ebp)
    1f35:	ff 75 dc             	push   -0x24(%ebp)
    1f38:	ff 75 d8             	push   -0x28(%ebp)
    1f3b:	ff 75 d4             	push   -0x2c(%ebp)
    1f3e:	57                   	push   %edi
    1f3f:	51                   	push   %ecx
    1f40:	50                   	push   %eax
    1f41:	8d 83 50 e0 ff ff    	lea    -0x1fb0(%ebx),%eax
    1f47:	50                   	push   %eax
    1f48:	e8 03 f1 ff ff       	call   1050 <printf@plt>
    1f4d:	83 c4 30             	add    $0x30,%esp
    1f50:	83 ec 0c             	sub    $0xc,%esp
    1f53:	68 11 27 00 00       	push   $0x2711
    1f58:	e8 2b 00 00 00       	call   1f88 <PierdeTiempo>
    1f5d:	83 c4 10             	add    $0x10,%esp
    1f60:	83 ec 08             	sub    $0x8,%esp
    1f63:	50                   	push   %eax
    1f64:	8d 83 f4 e0 ff ff    	lea    -0x1f0c(%ebx),%eax
    1f6a:	50                   	push   %eax
    1f6b:	e8 e0 f0 ff ff       	call   1050 <printf@plt>
    1f70:	83 c4 10             	add    $0x10,%esp
    1f73:	b8 00 00 00 00       	mov    $0x0,%eax
    1f78:	8d 65 f0             	lea    -0x10(%ebp),%esp
    1f7b:	59                   	pop    %ecx
    1f7c:	5b                   	pop    %ebx
    1f7d:	5e                   	pop    %esi
    1f7e:	5f                   	pop    %edi
    1f7f:	5d                   	pop    %ebp
    1f80:	8d 61 fc             	lea    -0x4(%ecx),%esp
    1f83:	c3                   	ret    

00001f84 <__x86.get_pc_thunk.ax>:
    1f84:	8b 04 24             	mov    (%esp),%eax
    1f87:	c3                   	ret    

00001f88 <PierdeTiempo>:
    1f88:	55                   	push   %ebp
    1f89:	89 e5                	mov    %esp,%ebp
    1f8b:	83 ec 10             	sub    $0x10,%esp
    1f8e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    1f95:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
    1f9c:	eb 27                	jmp    1fc5 <PierdeTiempo+0x3d>
    1f9e:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%ebp)
    1fa5:	eb 12                	jmp    1fb9 <PierdeTiempo+0x31>
    1fa7:	8b 45 f8             	mov    -0x8(%ebp),%eax
    1faa:	3b 45 fc             	cmp    -0x4(%ebp),%eax
    1fad:	75 06                	jne    1fb5 <PierdeTiempo+0x2d>
    1faf:	8b 45 fc             	mov    -0x4(%ebp),%eax
    1fb2:	01 45 f4             	add    %eax,-0xc(%ebp)
    1fb5:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    1fb9:	8b 45 f8             	mov    -0x8(%ebp),%eax
    1fbc:	3b 45 fc             	cmp    -0x4(%ebp),%eax
    1fbf:	7e e6                	jle    1fa7 <PierdeTiempo+0x1f>
    1fc1:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    1fc5:	8b 45 fc             	mov    -0x4(%ebp),%eax
    1fc8:	3b 45 08             	cmp    0x8(%ebp),%eax
    1fcb:	7c d1                	jl     1f9e <PierdeTiempo+0x16>
    1fcd:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1fd0:	c9                   	leave  
    1fd1:	c3                   	ret    

Desensamblado de la sección .fini:

00001fd4 <_fini>:
    1fd4:	f3 0f 1e fb          	endbr32 
    1fd8:	53                   	push   %ebx
    1fd9:	83 ec 08             	sub    $0x8,%esp
    1fdc:	e8 df f0 ff ff       	call   10c0 <__x86.get_pc_thunk.bx>
    1fe1:	81 c3 1f 20 00 00    	add    $0x201f,%ebx
    1fe7:	83 c4 08             	add    $0x8,%esp
    1fea:	5b                   	pop    %ebx
    1feb:	c3                   	ret    
